%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author:Salvatore DeSapio                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

s(PrologFact,fact) --> verb(Verb),np(Noun),
	{PrologFact=.. [Verb,Noun]}.
s(PrologFact,fact) --> verb(Verb),np(Noun),preposition,pn(ProperNoun),
	{PrologFact=.. [Verb,Noun,ProperNoun]}.
s(PrologFact,fact) --> verb(Verb),pn(ProperNoun),np(Noun),
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% below are just stubs            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
verb(mail) --> [mail].
verb(show) --> [show].

pn(jon) --> [jon].
pn(me) --> [me].

noun(file) --> [file].
noun(files) --> [files].