% Opens a webpage in the user's default browser
% author Salvatore DeSapio, Jonathan Frederickson
% Note: must call with a URL (i.e. "open http://google.com")

:- multifile verb/3, noun/3.

verb(run) --> [open].
verb(run) --> [run].
noun(internet) --> [internet].
%for some reason browser does not work
noun(internet) --> [browser].

run(Noun) :-
	string_concat('xdg-open ', Noun, Out),
	shell(Out).
