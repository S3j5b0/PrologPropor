
%?-expand([[not(not(q))]],X).

%det her 
expand([[not(not(X))|B]|T], T1) :-
        writeln("not not"),
	write("X: "),
	writeln(X),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
	expand([[X|B]|T], T1).



expand([[and(X,Y)|B]|T], T1) :-
	writeln("and"),
	write("X: "),
	writeln(X),
	write("Y: "),
	writeln(Y),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
       expand([[X,Y|B]|T], T1).

 

expand([[not(and(X,Y))|B]|T], T1) :-
	writeln("not and"),
	writeln("and"),
	write("X: "),
	writeln(X),
	write("Y: "),
	writeln(Y),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
        expand([[not(X)|B],[not(Y)|B]|T], T1).

 

expand([[or(X,Y)|B]|T], T1) :-
	writeln("or"),
	write("X: "),
	writeln(X),
	write("Y: "),
	writeln(Y),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
        expand([[X|B],[Y|B]|T], T1).

expand([[not(or(X,Y))|B]|T], T1) :-
	writeln("not or"),
	writeln("and"),
	write("X: "),
	writeln(X),
	write("Y: "),
	writeln(Y),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
	expand([[not(X),not(Y)|B]|T], T1).

expand([[imp(X,Y)|B]|T], T1) :-
        expand([[not(X)|B],[Y|B]|T], T1).
	


expand([[X|B]|T1], T5) :-
	writeln("expand extra"),
	write("X: "),
	writeln(X),
	write("B: "),
	writeln(B),
	write("T1: "),
	writeln(T1),
	write("T2: "),
	writeln(T2),
	write("T3: "),
	writeln(T3),
	write("T4: "),
	writeln(T4),
	write("T5: "),
	writeln(T5),
	expand([B], T2), distribute(X,T2,T3), expand(T1,T4), append(T3,T4,T5).

expand([[]|T1], [[]|T2]) :- 
	writeln("expand half"),
	write("T1: "),
	writeln(T1),
	write("T2: "),
	writeln(T2),
	expand(T1, T2).

expand([],[]) :-
	writeln('base case ').

distribute(X,[B|T],[[X|B]|T1]) :-
	writeln("distribute"),
	write("X: "),
	writeln(X),
	write("B: "),
	writeln(B),
	write("T: "),
	writeln(T),
	write("T1: "),
	writeln(T1),
        distribute(X,T,T1).

distribute(_,[],[]) :-
	writeln("distribute basic casing"),
	writeln("anonVal"),
	writeln(_).
	





% ['C:/Users/Ask/Documents/Prolog/functionaltabs.pl'].
