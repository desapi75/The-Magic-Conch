%Counts words in a file
:- multifile verb/3,noun/3.

verb(count) --> [count].
noun(words) -->[words].

count(ProperNoun,words) :-
    string_concat('wc -w ',ProperNoun,Out),
    shell(Out).
count(Noun) :-
    string_concat('wc -w ',Noun,Out),
    shell(Out).
