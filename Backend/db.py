import csv

header = None
history = None
index_inv = {}
index = {}
twin = {}
db = {}

def getHeadline(filename):
        global header, history, stats

        history = []
        with open(filename) as file:
                reader = csv.reader(file)
                for row in reader:
                             history.append(row)
        header = history[0]
        history.pop(0)

        for i in range (0, len(header)):
            index[ header[i] ] = i
            index_inv[i] = header[i]
        
        for i in range (0, len(header)):
            if "R" in header[i]:
                other = "B" + header[i][1:]
                twin[other] = i
            if "B" in header[i]:
                other = "R" + header[i][1:]
                twin[other] = i


def getLatestFight(filename):
        history = []
        with open(filename) as file:
                reader = csv.reader(file)
                for row in reader:
                             history.append(row)
        subheader = history[0]
        history.pop(0)

        for row in reversed(history):
            red = row[0]
            blue = row[1]
           
            # Do red
            statsR = [0] * len(header)
            for i in range (2, len(row)):
                if "R" in subheader[i]:
                        if subheader[i] in index.keys():
                                statsR[ index[ subheader[i] ] ] = row[i]
                                statsR[ twin[ subheader[i] ] ] = row[i]
                elif "B" not in subheader[i]:
                        if subheader[i] in index.keys():
                                statsR[ index[ subheader[i] ] ] = row[i]
            db[red] = statsR
 
            # Do blue
            statsB = [0] * len(header)
            for i in range (2, len(row)):
                if "B" in subheader[i]:
                        if subheader[i] in index.keys():
                                statsB[ index[ subheader[i] ] ] = row[i]
                                statsB[ twin[ subheader[i] ] ] = row[i]
                elif "R" not in subheader[i]:
                        if subheader[i] in index.keys():
                                statsB[ index[ subheader[i] ] ] = row[i]
            db[blue] = statsB

        for key in db:
                for i in range (0, len(db[key])):
                        if (db[key][i] == ""):
                            db[key][i] = 0


getHeadline("ufc-preprocessed.csv")
getLatestFight("ufc-master.csv")
# db contains last match for every fighter


