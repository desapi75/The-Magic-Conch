% Write text to a file

command(Command) :-
    Command = [write, save];
    write('echo').
    
text(Text) :-
    write(Text).

file(File) :-
    write('|'),
    write(File).
