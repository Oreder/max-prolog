/************************************************

		Copyright (c) 
		
 Written by: Binh D. Nguyen
 Comments: Find maximum of 2 and 3 numbers
*************************************************/

predicates

  nondeterm max2(integer,integer,integer)
  nondeterm max3(integer,integer,integer,integer)
  
clauses
  % ======= MAXIMUM of 2 numbers ========
  % using rollback
  % max2(X,Y,X):-X>=Y,!.
  % max2(X,Y,Y).
  
  % without rollback
  max2(X,Y,X):-X>=Y.
  max2(X,Y,Y):-Y>X.

  % ======= MAXIMUM of 3 numbers ========
  % using substitution
  % max3(A,B,C,X):-max2(A,B,Y),max2(Y,C,X).

  % without rollback
  max3(A,B,C,A):-A>B,A>C.
  max3(A,B,C,B):-B>C,B>=A.
  max3(A,B,C,C):-C>=A,C>=B.
  
goal
%  max2(4, 5, Max).
  max3(2, 5, 5, Max).