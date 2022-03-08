left_to(L, R, [L | [R | _]]).
left_to(L, R, [_ | Rest]) :- left_to(L, R, Rest).
next_to(X, Y, List) :- left_to(X, Y, List).
next_to(X, Y, List) :- left_to(Y, X, List).
has_fish(Street, Who) :-
 Street = [House1, House2, House3, House4, House5],
 [house(_, nor, _, _, _) | _] = Street,
 member(house(red, eng, _, _, _), Street),
 left_to(house(green, _, _, _, _), house(white, _, _, _, _), Street),
 member(house(_, den, tea, _, _), Street),
 next_to(house(_, _, _, light, _), house(_, _, _, _, cat), Street),
 member(house(yellow, _, _, cigar, _), Street),
 member(house(_, ger, _, ppipe, _), Street),
 [_, _, house(_, _, milk, _, _), _, _] = Street,
 next_to(house(_, _, water, _, _), house(_, _, _, light, _), Street),
 member(house(_, _, _, no_filter, bird), Street),
 member(house(_, swe, _, _, dog), Street),
 next_to(house(_, nor, _, _, _), house(blue, _, _, _, _), Street),
 next_to(house(_, _, _, _, horse), house(yellow, _, _, _, _), Street),
 member(house(_, _, beer, menthol, _), Street),
 member(house(green, _, coffee, _, _), Street),
 member(house(_, Who, _, _, fish), Street).
