%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author:Salvatore DeSapio                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- multifile verb/3,noun/3.

s(PrologFact) --> verb(Verb),np(Noun),
	{PrologFact=.. [Verb,Noun]}.
s(PrologFact) --> verb(Verb),preposition,np(Noun),
	{PrologFact=.. [Verb,Noun]}.
s(PrologFact) --> verb(Verb),np(Noun),preposition,pn(ProperNoun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.
s(PrologFact) --> verb(Verb),pn(ProperNoun),np(Noun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.
s(PrologFact) --> verb(Verb),preposition,np(Noun),preposition,pn(ProperNoun),
        {PrologFact=.. [Verb,ProperNoun,Noun]}.

np(Noun) --> det,noun(Noun).
np(Noun) --> noun(Noun).
np(ProperNoun) --> pn(ProperNoun).
preposition --> [to].
preposition --> [in].
preposition --> [on].
preposition --> [with].
preposition --> [for].
det --> [the].
det --> [a].
det --> [an].
det --> [my].
det --> [this].
pn(me) --> [me].
pn(ProperNoun)--> [ProperNoun].
