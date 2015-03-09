% Send and recieve internet mail

% find a way to make the following rules
% sub rules

command(Command) :-
    Command = [mail,forward, send];
    write('mail ').

topic(Topic, Description) :-
    Topic = [topic, heading, header],
    write(' '),
    write(Description),
    write(' ').
    
address(Address) :-
    write(Address).
    
message(Message) :-
    write(' '),
    write(Message), nl.
    

    
