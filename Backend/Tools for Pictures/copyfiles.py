import shutil

with open("../names.txt") as f:
    content = f.readlines()
content = [x.strip() for x in content]

for superstar in content:
        newname = superstar.replace(" ", "")
        directory = "./" + newname + "/"
        shutil.copy(directory + newname + ".png", './')
