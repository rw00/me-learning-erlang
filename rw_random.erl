-module(rw_random).

-export([random/0, random/1, random/2]).

random() -> random:uniform().

random(N) when N > 0 -> random:uniform(N).

random(M, N) when M < N -> random:uniform(M, N).
