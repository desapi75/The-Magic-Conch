# The main file for THE-MAGIC-CONCH
# author Salvatore DeSapio and John Fiduk
import subprocess
subprocess.call("clear")
print("=============================================")
print("=             The-Magic-Conch               =")
print("=        English to Shell Translater        =")
print("=============================================")
print("=============================================")
print("Hello, how may I help you?")
plgcommand = [""]
# run until the user types quit
while str(plgcommand[0]) != "quit":
	# get command from user
	command = raw_input("")
    	# split up words into a list and remove spaces
	plgcommand = command.split()
	x=0
    	value=""
    	for index in plgcommand:
        	value += "'" + index + "',"
        	x+=1
    	value = value[:-1]
	# run the list through the prolog program
    	subprocess.Popen(["swipl","--quiet","-f","load.pl","-t","parse_sentence(["+value+"]),halt"])
	# check that the command is not quit
	if plgcommand != ["quit"]:
		plgcommand = [""]
	print("=============================================")
subprocess.call("clear")
