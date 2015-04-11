% send internet mail

:- multifile verb/3, noun/3.

verb(mail) --> [mail].
verb(send) --> [mail].

mail(ProperNoun,Noun) :- shell('echo mail').
