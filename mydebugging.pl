%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                    %
%  Utilities for development and debugging           %
%  N. L. Tinkham                                     %
%                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% list_facts:  Like listing, but lists only the dynamic predicates.

list_facts :-	
	listing(red),
	listing(yellow),
	listing(blue),
	listing(green),
	listing(orange),
	listing(purple),
	listing(on),
	listing(beside),
	listing(cube),
	listing(pyramid),
	listing(sphere).
