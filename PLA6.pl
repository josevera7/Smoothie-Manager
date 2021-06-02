store(best_smoothies, [alan,john,mary],
[ smoothie(berry, [orange, blueberry, strawberry], 2),
smoothie(tropical, [orange, banana, mango, guava], 3),
smoothie(blue, [banana, blueberry], 3) ]).


store(all_smoothies, [keith,mary],
[ smoothie(pinacolada, [orange, pineapple, coconut], 2),
smoothie(green, [orange, banana, kiwi], 5),
smoothie(purple, [orange, blueberry, strawberry], 2),
smoothie(smooth, [orange, banana, mango],1) ]).


store(smoothies_galore, [heath,john,michelle],
[ smoothie(combo1, [strawberry, orange, banana], 2),
smoothie(combo2, [banana, orange], 5),
smoothie(combo3, [orange, peach, banana], 2),
smoothie(combo4, [guava, mango, papaya, orange],1),
smoothie(combo5, [grapefruit, banana, pear],1) ]).

more_than_four(X) :-
    store(X,_,Menu),
    length(Menu,Size),
    Size>=4.

exists(X) :-
    store(_,_,Menu),
    member(smoothie(X,_,_),Menu).

ratio(X,R) :-
    store(X,Employees,Menu),
    length(Menu,MSize),
    length(Employees,ESize),
    R is ESize/MSize.

average(X,A) :-
    store(X,_,Menu),
    length(Menu,MSize),
    sumlist(Menu,Sum),
    A is Sum/MSize.
    
sumlist([],0).

sumlist([smoothie(_,_,Price)|Tail],Sum):-
    sumlist(Tail,SumRest),
    Sum is SumRest + Price.
    
    
    
    
    
    
    
    
    