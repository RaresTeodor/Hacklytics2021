# Modified ELO rating system for UFC
# Extra feature: title bout

import csv

match = {}
rating = {}
header = None
history = None
players = None

winner = None
title = None
redWins = None
blueWins = None

def loadCSV(filename):
        global header, history

        history = []
        with open(filename) as file:
                reader = csv.reader(file)
                for row in reader:
                        if (len(row[0]) > 0):
                                history.append(row)
        header = history[0]
        history.pop(0)

def printLeaderboard():
        global players, rating

        players = []
        for key in rating:
                players.append((key, rating[key]))

        players.sort(key = lambda x : x[1])
        players.reverse()
        for fighter in players:
                print (fighter[0], fighter[1])

def computeELO():
        global bonus, rating, players, header
        global winner, title, redWins, blueWins

        winner = "Winner"
        title = "title_bout"
        redWins = "R_wins"
        blueWins = "B_wins"

        for i in range(0, len(header)):
                if (header[i] == winner): winner = i
                if (header[i] == title): title = i
                if (header[i] == redWins): redWins = i
                if (header[i] == blueWins): blueWins = i

        for row in reversed(history):
                red = row[0]
                blue = row[1]

                # Create a new entry
                if red not in rating: rating[red] = 1200
                if blue not in rating: rating[blue] = 1200

                oldRed = rating[red]
                oldBlue = rating[blue]

                expectedRed = 1 / (1 + 10 ** ((oldBlue - oldRed) / 300))
                expectedBlue = 1 / (1 + 10 ** ((oldRed - oldBlue) / 300))

                # Title match
                if (row[title] == "TRUE"): K = 256
                else: K = 64

                # Who is the winner
                if (row[winner] == "Red"):
                        newRed = oldRed + K * (1 - expectedRed)
                        newBlue = oldBlue + K * (0 - expectedBlue)
                elif (row[winner] == "Blue"):
                        newBlue = oldBlue + K * (1 - expectedBlue)
                        newRed = oldRed + K * (0 - expectedRed)
                else:
                        newBlue = oldBlue + K * (0.5 - expectedBlue)
                        newRed = oldRed + K * (0.5 - expectedRed)       

                rating[red] = newRed
                rating[blue] = newBlue

                superkey = red + blue + str(int(float(row[redWins]))) + str(int(float(row[blueWins])))
                match[superkey] = (newRed, newBlue)

def buildCSV():
        header.append("R_rating")
        header.append("B_rating")
        with open('../ufc_final.csv', mode='w', newline='') as ufc_final:
                ufc_writer = csv.writer(ufc_final)
                ufc_writer.writerow(header)
                for row in history:
                        red = row[0]
                        blue = row[1]
                        superkey = red + blue + str(int(float(row[redWins]))) + str(int(float(row[blueWins])))

                        curr_row = row
                        curr_row.append(match[superkey][0])
                        curr_row.append(match[superkey][1])
                        ufc_writer.writerow(curr_row)

loadCSV("ufc_old.csv")
computeELO()

loadCSV("ufc_new.csv")
computeELO()

loadCSV("ufc-master.csv")
buildCSV()



