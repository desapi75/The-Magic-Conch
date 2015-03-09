% Play mp3 files

command(Command) :-
    Command = [play, music, listen];
    write('mplayer').
    
file(File):-
    write(File).
