%% Grumpy was in front of Dopey. 
%% Stumpy was behind Sneezy and Doc. 
%% Doc was in front of Droopy and Happy.
%% Sleepy was behind Stumpy, Smelly and Happy.
%% Happy was in front of Sleepy, Smelly and Bashful.
%% Bashful was behind Smelly, Droopy and Sleepy.
%% Sneezy was in front of Dopey. 
%% Smelly was in front of Grumpy, Stumpy and Sneezy.
%% Dopey was in front of Droopy.
%% Sleepy was in front of Grumpy and Bashful.
%% Dopey was behind Sneezy, Doc and Sleepy.
%% Stumpy was in front of Dopey. 
%% Smelly was behind Doc.

%% From the clues, can you determine the order in which they stood in the ticket queue?

%% Answer: Doc Happy Smelly Sneezy Stumpy Sleepy Grumpy Dopey Droopy Bashful

front(X,Y) :- behind(Y,X).

front(grumpy,dopey).
front(doc,droopy).
front(doc,happy).
front(happy,sleepy).
front(happy,smelly).
front(happy,bashful).
front(sneezy,dopey).
front(smelly,grumpy).
front(smelly,stumpy).
front(smelly,sneezy).
front(dopey,droopy).
front(sleepy,grumpy).
front(sleepy,bashful).
front(stumpy,dopey).

behind(X,Y) :- front(Y,X).

behind(stumpy,sneezy).
behind(stumpy,doc).
behind(sleepy,stumpy).
behind(sleepy,smelly).
behind(sleepy,happy).
behind(bashful,smelly).
behind(bashful,droopy).
behind(bashful,sleepy).
behind(dopey,sneezy).
behind(dopey,doc).
behind(dopey,sleepy).
behind(smelly,doc).


start() :- 
	order([bashful, droopy, dopey, doc, happy, sneezy, smelly, sleepy, stumpy], [grumpy]).

order([Dwarf|[]], Order) :- write("Order is: "), write(Order), nl.

order([Dwarf|Others], [First|[]]) :- 

	(front(Dwarf, First) -> order(Others, [Dwarf, First])

		; order([Others], [First, Dwarf])

	).

order([Dwarf|Others], [First|Rest]) :-

	(front(Dwarf, First) -> order(Others, [Dwarf, First|Rest])

		; order([Dwarf|Others], [First, Rest])

	).