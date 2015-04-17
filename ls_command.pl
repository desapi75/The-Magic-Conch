% run the ls command
% author Salvatore DeSapio
:- multifile verb/3,noun/3.

verb(show) --> [show].
noun(files) --> [files].
noun(directory) --> [directory].

show(me,files) :- shell('ls').
show(files) :- shell('ls').
