#!/bin/bash

# This is the script that starts all the processes
# Not: this file may be removed and its functions may be merged with the c
# program

swipl<<END
[head].
consult(mail).
mail(send).
mail(forward).
END
