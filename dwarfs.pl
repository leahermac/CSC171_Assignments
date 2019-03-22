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

front(grumpy,dopey).
inbehind(stumpy,sneezy).
inbehind(stumpy,doc).
front(doc,droopy).
front(doc,happy).
inbehind(sleepy,stumpy).
inbehind(sleepy,smelly).
inbehind(sleepy,happy).
front(happy,sleepy).
front(happy,smelly).
front(happy,bashful).
inbehind(bashful,smelly).
inbehind(bashful,droopy).
inbehind(bashful,sleepy).
front(sneezy,dopey).
front(smelly,grumpy).
front(smelly,stumpy).
front(smelly,sneezy).
front(dopey,droopy).
front(sleepy,grumpy).
front(sleepy,bashful).
inbehind(dopey,sneezy).
inbehind(dopey,doc).
inbehind(dopey,sleepy).
front(stumpy,dopey).
inbehind(smelly,doc).

inFrontof(X,Y):-
front(X,Y);
inbehind(Y,X).


behind(X,Y):-
inFrontof(Y,X);
inbehind(X,Y).