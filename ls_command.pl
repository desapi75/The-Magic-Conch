% run the ls command

:- multifile verb/3,noun/3.

verb(show) --> [show].
noun(files) --> [files].
show(me,files) :- shell('ls').

