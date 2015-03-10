% Shut down or restart your computer

command(Command) :-
    Command = [shutdown, turnoff, poweroff];
    write('shutdown now').

command(Command) :-
    Command = [restart];
    write('shutdown -r now').

