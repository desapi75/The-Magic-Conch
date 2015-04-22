% remotely log into a unix system

:- multifile verb/3, noun/3.

verb(ssh) --> [login].
verb(ssh) --> [ssh].
verb(ssh) --> [access].
noun(features) --> [features].

ssh(Noun) :-
        string_concat('ssh ', Noun, Out),
        shell(Out).


