-module(rw_tuples).

example_of_pattern_matching(Tuple) ->
    case Tuple of
        {X, Y, Z} -> io:format("Matched a 3-element tuple: ~p, ~p, ~p~n", [X, Y, Z]);
        _ -> io:format("Did not match a 3-element tuple~n")
    end.

profile_info() ->
    Name = {name, "John Doe"},
    Age = {age, 30},
    Location = {location, "New York"},
    io:format("Profile Info: ~p, ~p, ~p~n", [Name, Age, Location]).
