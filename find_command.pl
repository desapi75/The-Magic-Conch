% search your computer for a file
% author Salvatore DeSapio
:- multifile verb/3, noun/3.

verb(search) --> [search].
verb(search) --> [find].
verb(search) --> [locate].

search(Noun) :-
	string_concat('find 2>/dev/null /home -name ',Noun, Out),
        shell(Out).
search(ProperNoun, Noun) :-
	string_concat('find 2>/dev/null /home -name ', ProperNoun, PreOut1),
	string_concat(' -exec grep ', Noun, PreOut2),
	string_concat(PreOut2, ' {} +', PreOut3),
	string_concat(PreOut1, PreOut3, Out),
	shell(Out).

