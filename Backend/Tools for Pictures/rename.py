import os
from os import walk
from os import listdir
from os.path import isfile, join

def getExistingFile(mypath):
        onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
        return onlyfiles[0]

with open("../names.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content]

f = []
directories = []
for (dirpath, dirname, filename) in walk("./"):
        directories.append(dirname)
        break

for superstar in content:
        directory = "./" + superstar + " png/"
        name = superstar.replace(" ", "")
        name = name + ".png"
        os.rename(directory + getExistingFile(directory), directory + name)

for superstar in content:
        directory = "./" + superstar + " png"
        newdirectory = superstar.replace(" ", "")
        os.rename(directory, newdirectory)
