# The main file for THE-MAGIC-CONCH
# author Salvatore DeSapio and Jason Fiduk
import subprocess
subprocess.call("clear")
print("=============================================")
print("=             The-Magic-Conch               =")
print("=        English to Shell Translator        =")
print("=============================================")
plgcommand = [""]
# run until the user types quit
while str(plgcommand[0]) != "quit":
	# get command from user
	print("=============================================")
	command = raw_input("Hello, how may I help you?\n")
	print("=============================================")
    	# split up words into a list and remove spaces
	plgcommand = command.split()
	x=0
    	value=""
    	for index in plgcommand:
        	value += "'" + index + "',"
        	x+=1
    	value = value[:-1]
	# run the list through the prolog program
    	process = subprocess.Popen(["swipl","--quiet","-f","load.pl","-t","parse_sentence(["+value+"]),halt"])	
	process.wait()
	# check that the command is not quit
	if plgcommand != ["quit"]:
		plgcommand = [""]
subprocess.call("clear")
