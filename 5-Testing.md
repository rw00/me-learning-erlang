## Erlang Testing

### EUnit (Unit Testing)

EUnit is the built-in unit testing framework. Tests can be written inline or in separate modules:

```erlang
-module(math_util_tests).
-include_lib("eunit/include/eunit.hrl").

square_test() ->
  ?assertEqual(16, math_util:square(4)).
```

Run with `eunit:test(math_util_tests).` in the shell.
