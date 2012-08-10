distance_between_atom( portsmouth, london, 56 ).
distance_between_atom( oxford, london, 42 ).
distance_between_atom( portsmouth, southampton, 23 ).
distance_between_atom( portsmouth, brighton, 39 ).
distance_between_atom( london, brighton, 23 ).
distance_between_atom( southampton, winchester, 13 ).
distance_between_atom( southampton, oxford, 34 ).
distance_between_atom( winchester, oxford, 28 ).
distance_between_atom( coventry, oxford, 35 ).
distance_between_atom( coventry, birmingham, 18 ).
distance_between_atom( coventry, nottingham, 68 ).
distance_between_atom( oxford, nottingham, 75 ).
distance_between_atom( birmingham, nottingham, 72 ).
distance_between_atom( nottingham, sheffield, 26 ).
distance_between_atom( sheffield, leeds, 25 ).
distance_between_atom( leeds, manchester, 28 ).
distance_between_atom( birmingham, manchester, 51 ).
distance_between_atom( london, cambridge, 37 ).
distance_between_atom( cambridge, oxford, 52 ).
distance_between_atom( cambridge, norwich, 30 ).
distance_between_atom( nottingham, norwich, 68 ).

distance_between( X, Y, Dist ) :- distance_between_atom( X, Y, Dist ).
distance_between( X, Y, Dist ) :- distance_between_atom( Y, X, Dist ).

link_between( X, Y ) :-
        distance_between( X, Y, _ ).

% TODO:

% 1. Create a predicate all_journeys_to which takes a destination
%    city and returns lists of possible journeys to it.
%    Note that to begin with duplicate cities will exist, and the
%    set of possible solutions is therefore infinite.

% 2. Alter the predictate so that only journeys with no duplicate nodes
%    are generated. (The solution set is now finite.)

% 3. Create a predicate all_journeys_from_to which only returns journeys
%    from the FROM city to the TO city.

% 4. Extend this predicate so that it also generates the total distance on
%    each journey so generated.

% 5. Create a predicate fastest_journey_between which only returns the
%    journey between the FROM and TO nodes with the smallest distance.

