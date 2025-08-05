-module(rw_math).

-export([add/2, subtract/2, multiply/2, divide/2, modulus/2, power/2]).
-export([exp/1, integer_divide/2]).

-define(PI, 3.141592653589793).

add(A, B) -> A + B.

subtract(A, B) -> A - B.

multiply(A, B) -> A * B.

divide(A, B) -> A / B.

modulus(A, B) -> A rem B.

power(_, 0) -> 1;
power(A, 1) -> A;
power(A, B) when B > 1 -> A * power(A, B - 1).

%%% MORE FUNCTIONS %%%

%%% MORE math OPERATIONS:
%%% pow, sqrt, log, log10, sin, cos, tan...
exp(A) -> math:exp(A).

circle_area_approx(Radius) ->
    ?PI * Radius * Radius.

integer_divide(A, B) ->
    try
        A div B % without decimals
    catch
        error:badarith ->
            {error, division_by_zero}
    end.
