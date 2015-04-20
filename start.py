# The main file for THE-MAGIC-CONCH
# author Salvatore DeSapio
import subprocess
subprocess.call("clear")
print("=============================================")
print("=             The-Magic-Conch               =")
print("=        English to Shell Translater        =")
print("=============================================")
plgcommand = [""]
# get command from user
while str(plgcommand[0]) != "quit":
    print("=============================================")
    command = raw_input('Hello, how may I help you?\n')
    # split up words into a list and remove spaces
    plgcommand = command.split()
    x=0
    value=""
    for index in plgcommand:
        value += "'" + index + "',"
        x+=1
    value = value[:-1]
    subprocess.Popen(["swipl","--quiet","-f","load.pl","-t","parse_sentence(["+value+"]),halt"])


