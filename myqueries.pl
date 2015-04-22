%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author:Salvatore DeSapio                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
:- multifile verb/3,noun/3.

s(PrologFact) --> verb(Verb), np(Noun),
	{PrologFact=.. [Verb,Noun]}.
s(PrologFact) --> verb(Verb), pnp(ProperNoun), np(Noun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.
s(PrologFact) --> verb(Verb), np(Noun), pnp(ProperNoun),
	{PrologFact=.. [Verb,ProperNoun,Noun]}.

np(Noun) --> det,noun(Noun).
np(Noun) --> noun(Noun).
np(ProperNoun) --> pn(ProperNoun).
np(ProperNoun) --> lesserpreposition,pn(ProperNoun).
pnp(ProperNoun) --> pn(ProperNoun).
pnp(ProperNoun) --> preposition,pn(ProperNoun).
preposition --> [to].
preposition --> [in].
preposition --> [on].
preposition --> [through].
preposition --> [with].
lesserpreposition --> [for].
det --> [the].
det --> [a].
det --> [an].
det --> [my].
det --> [this].
pn(me) --> [me].
pn(ProperNoun)--> [ProperNoun].
