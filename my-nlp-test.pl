%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% THE-MAGIC-CONCH 
% 	Speech to Shell translator
% authors: Salvatore DeSapio and Jon Frederickson
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parser and Traverser
% NOTE: This section of the code is heavily based
%       on code found in a online tutorial this
%       must be rewritten
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parse(Node,[],[Node]) :-
    final(Node).
parse(Node_1,String,[Node_1,Label|Path]) :-
    arc(Node_1,Node_2,Label),
    traverse(Label,String,NewString),
    parse(Node_2,NewString,Path).

traverse('#',String,String).
traverse(Label,[Symbol|Symbols],Symbols) :-
	lex(Symbol,Label).

testparse(Symbols,Parse) :-
    initial(Node),
    parse(Node,Symbols,Parse).

genparse(Symbols,Parse) :-
   testparse(Symbols,Parse).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The prolog code for the finite state machine
% drawn by Jon Frederickson and Salvatore DeSapio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

initial(1).
final(10).
arc(1, 2, verb).
arc(2, 3, opt).
arc(2, 4, noun).
arc(3, 4, noun).
arc(4, 1, conn).
arc(4, 5, to).
arc(5, 6, pn).
arc(6, 1, conn).
arc(2, 7, pn).
arc(7, 8, opt).
arc(7, 9, noun).
arc(8, 9, noun).
arc(9, 1, conn).
arc(4, 10, end).
arc(6, 10, end).
arc(9, 10, end).
 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Below are test lexicons
% most of these will be moved into other files
% written by Jon Frederickson an Salvatore DeSapio
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lex(end, end).
 
lex(to, to).
 
lex(send, verb).
lex(mail, verb).
lex(save, verb).
 
lex(location, noun).
lex(name, noun).
 
lex(and, conn).
lex(then, conn).
 
lex(the, opt).
lex(my, opt).
lex(this, opt).
 
lex(jon, pn).
lex(chris, pn).
lex(sal, pn).
lex(file, pn).
