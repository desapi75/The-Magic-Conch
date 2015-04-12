:- multifile verb/3, noun/3.

verb(run) --> [open].
verb(run) --> [run].
noun(internet) --> [internet].
%for some reason browser does not work
noun(internet) --> [browser].

run(internet) :- shell('firefox').
run(internet) :- shell('google-chrome').
