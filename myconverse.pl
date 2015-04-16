%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: Salvatore DeSapio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parse_sentence([quit]) :- !.
parse_sentence(Sentence) :-
	s(Fact, Sentence, []), !,
	respond_to_sentence(Fact).
	
parse_sentence(_) :-
	write('Please rephrase that.'), nl,
	converse.
respond_to_sentence(Command) :-
	call(Command),
	write('I just ran the command, '), write(Command), nl, !.
