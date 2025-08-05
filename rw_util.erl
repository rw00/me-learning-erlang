-module(rw_util).

-export([is_teenager/1, is_child_or_senior/1]).

%%%
%%% `and` evaluates both sides without short-circuiting
%%% same for `or`
%%%

is_teenager(Age) ->
    Age >= 13 andalso Age =< 19.

is_senior(Age) ->
    Age >= 65.

is_young(Age) ->
    not is_senior(Age).

is_child_or_senior(Age) ->
    Age =< 12 orelse is_senior(Age).
