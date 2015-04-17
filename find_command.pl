% search your computer for a file
% author Salvatore DeSapio
:- multifile verb/3, noun/3.

verb(search) --> [search].
verb(search) --> [find].
verb(search) --> [locate].

search(Noun) :-
	string_concat('find 2>/dev/null /home -name ',Noun, Out),
        shell(Out).
search(me,Noun) :-
	string_concat('find 2>/dev/null /home -name ',Noun, Out),
        shell(Out).
search(ProperNoun, Noun) :-
	string_concat('grep ', Noun, PreOut1),
	string_concat(PreOut1, ' ', PreOut2),
	string_concat(PreOut2, ProperNoun, Out),
	shell(Out).

