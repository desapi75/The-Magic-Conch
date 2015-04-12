% search your computer for a file
% author Salvatore DeSapio
:- multifile verb/3, noun/3.

verb(search) --> [search].
verb(search) --> [find].

search(Noun) :-
	string_concat('find -name ',Noun, Out),
        shell(Out).

