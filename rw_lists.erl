-module(rw_lists).

join_lists(List1, List2) ->
    List1 ++ List2.

diff_lists(List1, List2) ->
    List1 -- List2.

% one element
head(List) ->
    hd(List).

% remaining elements after head
tail(List) ->
    tl(List).

% Returns a list of even numbers from the given list.
even_numbers(List) ->
    %%% List comprehension structure:
    %%%  [SimpleMapExpressionUsingSomeVar || SomeVar <- ListToBeComprehended, SimpleFilterExpressionUsingSomeVar].

    [X || X <- List, X rem 2 == 0].
