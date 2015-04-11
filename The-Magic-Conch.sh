#!/bin/bash

# This is the script that starts all the processes

swipl<<END
[myqueries,myconverse,ls_command].
run.
END
