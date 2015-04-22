% play a music file 
% author: Jonathan Frederickson

:- multifile verb/3, noun/3.

verb(play) --> [play].

play(Noun) :- 
	string_concat('mplayer ', Noun, Out),
	shell(Out).
