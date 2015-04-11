% send internet mail

:- multifile verb/3, noun/3.

verb(mail) --> [mail].
verb(send) --> [mail].

mail(ProperNoun,Noun) :-
	atom_string(ProperNoun, Email),
	atom_string(Noun, File),
	string_concat('echo ', Email, Cmd),
	string_concat(Cmd,File,Out),
	shell(Out).
