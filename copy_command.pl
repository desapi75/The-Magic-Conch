% make a copy of a file
% author Salvatore DeSapio
:- multifile verb/3,noun/3.

verb(copy) --> [copy].
verb(copy) --> [duplicate].

copy(ProperNoun,Noun) :- 
	string_concat('cp ', Noun, Preout),
	string_concat(Preout, ' ', Preout2),
	string_concat(Preout2, ProperNoun, Out),
	shell(Out).

