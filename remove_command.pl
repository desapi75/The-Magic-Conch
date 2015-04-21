% delete a file
% author Salvatore DeSapio
:- multifile verb/3, noun/3.

verb(remove) --> [remove].
verb(remove) --> [delete].

remove(Noun) :-
        string_concat('rm ',Noun, Out),
        shell(Out).

