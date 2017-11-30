len([], 0).
len([_ | Tail], Length) :- len(Tail, Length1), Length is Length1 + 1,!.

app([], Head, Head).
app([Head|Tail], Element, [Head|Tail1]) :- app(Tail,Element,Tail1).

pre(Item, List, [Item|List]).

del(x,_,_).
del(Element,[Element|Tail],Tail).
del(Element,[Head|Tail],[Head|Tail1]) :- del(Element,Tail,Tail1), !.