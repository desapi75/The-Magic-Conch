:- multifile verb/3, noun/3.

verb(open) --> [open].
noun(internet) --> [internet].

open(internet) :- shell('firefox').
open(internet) :- shell('google-chrome').
