%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                    %
%  Conversation:                                     %
%     Assert facts and respond to queries            %
%  N. L. Tinkham                                     %
%                                                    %
%  Facts and queries are both Prolog facts.          %
%  The sentences are marked as "fact" or "query".    %
%                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SETTING UP DYNAMIC PREDICATES FOR ASSERT/RETRACT WITHOUT ERRORS.

?- dynamic
	red/1, yellow/1, blue/1, green/1, orange/1, purple/1,
	on/2, beside/2,
	cube/1, pyramid/1, sphere/1.

% TOP-LEVEL PREDICATES:

run :-
	cleanup,
	converse.

converse :-
	write('Next: '),
	read(Sentence),
	parse_sentence(Sentence).

% parse_sentence(+Sentence)
% Sentence is a fact to assert, or a query to respond to, or [quit].
% Parse the sentence, and carry out the action.

parse_sentence([quit]) :- !.
parse_sentence(Sentence) :-
	s(Fact, KindOfSentence, Sentence, []), !,
	write(Fact),
	respond_to_sentence(Fact, KindOfSentence),
	converse.
parse_sentence(_) :-
	write('I don''t understand that.'), nl,
	converse.

% respond_to_sentence(+Fact, +KindOfSentence)
% Fact is either a new fact to assert or a query to ask.
% KindOfSentence is "fact" or "query".

respond_to_sentence(NewFact, fact) :-
	assert(NewFact), !.

respond_to_sentence(Question, query) :-
	call(Question),
	write('Yes'), nl, !.
respond_to_sentence(_, query) :-
	write('No'), nl, !.

respond_to_sentence(Sentence, Unknown) :-	 % Should never happen
	write(Sentence),
	write(' is an unknown type of sentence: '),
	write(Unknown),
	nl, !.


% cleanup
% Retract all facts from previous runs

cleanup :-
	retractall(red(_)),
	retractall(yellow(_)),
	retractall(blue(_)),
	retractall(green(_)),
	retractall(orange(_)),
	retractall(purple(_)),
	retractall(on(_,_)),
	retractall(beside(_,_)),
	retractall(cube(_)),
	retractall(pyramid(_)),
	retractall(sphere(_)).
