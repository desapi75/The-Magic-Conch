# The main file for THE-MAGIC-CONCH
# author Salvatore DeSapio
import subprocess

print("\n\n")
print("=============================================")
print("=	     The-Magic-Conch               =")
print("=	English to Shell Translater        =")
print("=============================================")
# get command from user
command = raw_input('Hello, how can I help you?\n')
# split up words into a list and remove spaces
plgcommand = command.split()


# create prolog command
plgcommand = "testparse("+str(plgcommand)+",Parse)."

#output command for testing purposes
print(plgcommand)
###########################################
# This method will be scrapt in favor of using unix domain sockets
################################
# start prolog interpreter
subprocess.call(['swipl', 'my-nlp-test.pl'], shell=True)




