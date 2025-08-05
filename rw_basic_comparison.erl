-module(rw_basic_comparison).

-export([equal_with_type/2, not_equal/2, greater/2, less/2, greater_or_equal/2, less_or_equal/2]).

% There are also logical operators like `xor`

equal_with_type(A, B) -> A =:= B.

equal(A, B) -> A == B.

not_equal_with_type(A, B) -> A =/= B.

not_equal(A, B) -> A /= B.

greater(A, B) -> A > B.

less(A, B) -> A < B.

greater_or_equal(A, B) -> A >= B.

less_or_equal(A, B) -> A =< B.
