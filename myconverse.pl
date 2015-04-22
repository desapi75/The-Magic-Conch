%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% author: Salvatore DeSapio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% check if user types the quit command
parse_sentence([quit]) :- !.
% check if the user entered no input
parse_sentence([]) :-
	write('You did nothing.'), nl, !.
% check if the input aligns with the grammars
parse_sentence(Sentence) :-
	s(Fact, Sentence, []), !,
	respond_to_sentence(Fact).
% if it does not fit any grammars respond accordingly
parse_sentence(_) :-
	write('Please rephrase that.'), nl.
% if it does fit the grammar execute command
respond_to_sentence(Command) :-
	call(Command),
	write('I just ran the command, '), write(Command), nl, 
	write('============================================='), nl,
	write('How, may I help you?'), nl, !.
