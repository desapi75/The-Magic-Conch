%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author:Salvatore DeSapio                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- multifile verb/3,noun/3.

s(PrologFact) --> verb(Verb),np(Noun),
	{PrologFact=.. [Verb,Noun]}.
s(PrologFact) --> verb(Verb),np(Noun),preposition,pn(ProperNoun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.
s(PrologFact) --> verb(Verb),pn(ProperNoun),np(Noun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.

np(Noun) --> det,noun(Noun).
np(Noun) --> noun(Noun).
preposition --> [to].
preposition --> [in].
preposition --> [on].
det --> [the].
det --> [a].
det --> [my].
det --> [this].
pn(me) -->[me].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% below are just stubs            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verb(mail) --> [mail].

pn(jon) --> [jon].

noun(file) --> [file].

mail(jon,file).

