% send internet mail

:- multifile verb/3, noun/3.

verb(mail) --> [mail].
verb(mail) --> [send].
verb(mail) --> [email].
noun(email) --> [email].
noun(email) --> [message].

mail(ProperNoun,email) :-
        string_concat('mail ', ProperNoun, Out),
        shell(Out).
mail(ProperNoun,Noun) :-
	string_concat('mail ', ProperNoun, Cmd1),
	string_concat(Cmd1, ' < ', Cmd2),
	string_concat(Cmd2,Noun,Out),
	shell(Out).


