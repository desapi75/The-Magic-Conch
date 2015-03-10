% return username

command(Command) :-
    Command = ['who am I', 'whats my name'],
    write(whoami).
