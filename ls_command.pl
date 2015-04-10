% run the ls command

verb(show) --> [show].
noun(files) --> [files].
show(me,files) :- shell('ls').

