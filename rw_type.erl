-module(rw_type).

print(X) when is_atom(X) ->
    io:format("It's an atom: ~p~n", [X]);

print(X) when is_boolean(X) ->
    io:format("It's a boolean: ~p~n", [X]);

print(X) when is_integer(X) ->
    io:format("It's an integer: ~p~n", [X]);

print(X) when is_float(X) ->
    io:format("It's a float: ~p~n", [X]);

print(X) when is_list(X) ->
    io:format("It's a list (or string): ~p~n", [X]);

print(X) when is_tuple(X) ->
    io:format("It's a tuple: ~p~n", [X]);

print(X) when is_map(X) ->
    io:format("It's a map: ~p~n", [X]);

print(X) when is_binary(X) ->
    io:format("It's a binary: ~p~n", [X]);

print(X) ->
    io:format("Unknown type: ~p~n", [X]).
