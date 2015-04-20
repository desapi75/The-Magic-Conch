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

    if(command != ""):
    	# split up words into a list and remove spaces
    	plgcommand = command.split()
    else:
        plgcommand = [""]


    # create prolog command
    #plgcommand = "testparse("+str(plgcommand)+",Parse)"

    #output command for testing purposes
    print(str(plgcommand))
    ###########################################
    # This method will be scrapt in favor of using unix domain sockets
    ################################
    # start prolog interpreter
    subprocess.call("swipl --quiet -f load.pl -t 'parse_sentence("+ str(plgcommand) +"),halt'", shell=True)

