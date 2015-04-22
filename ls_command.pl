% run the ls command/ print out specific files.
% author Salvatore DeSapio
%Jason Fiduk
:- multifile verb/3,noun/3.

verb(show) --> [show].
verb(show) --> [display].
verb(show) -->[print].
noun(files) --> [files].
noun(directory) --> [directory].

show(me,files) :- shell('ls').
show(files) :- shell('ls').
show(Noun) :-
    string_concat('cat ',Noun,Out),
    shell(Out).
show(me,Noun) :-
     string_concat('cat ',Noun,Out),
    shell(Out).
