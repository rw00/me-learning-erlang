## Erlang Language Basics

### Syntax
* A dot `.` indicates the end of a statement or declaration. \
For example, module and function declarations and definitions should end with `.`

```erlang
-include_lib("eunit/include/eunit.hrl").
-define(PI, 3.14159).
```

* A comma `,` indicates the end of one sequential expression in a block where order matters, like inside a function.
```erlang
print_sum(A, B) ->
    Sum = A + B,
    io:format("The sum of ~p and ~p is ~p~n", [A, B, Sum]).
```

* For expressions like `try`, `case` and `receive`, branches should be punctuated with a semicolon`;` \
The last branch, though, should not be punctuated at all.

* `end` is used to indicate the end of expressions or local function definitions.

### Modules

A module is defined in a file with the same name. A module exports its public functions. \
Module and function names are snake_case. \
Modules can implement behaviors, which are essentially abstractions. \
For example, there's the `application`, `supervisor` and `gen_server` behaviors. \
There are callbacks that need to be implemented and exported.

```erlang
-module(math_util).
-export([square/1]). % /1 means the function accepts one parameter

square(X) -> X * X.
```

### Constants
* Local constants and function parameters must start with Uppercase. \
There are no mutable variables that can be reassigned. \
Example: `Data = 7.`

### Atoms
Atoms are literal constants. Basically, their value equals their name. They're often used as enums. \
Atoms must start with lowercase or are single-quoted. \
Example: `ok.` \
Example: `err_not_found = 'err_not_found'.`

### Functions
Functions can have multiple clauses with pattern matching and guard clauses:
```erlang
factorial(0) ->
    1;
factorial(N) when N > 0 ->
    N * factorial(N - 1).
```
Functions can be anonymous:
```erlang
SquareFun = fun(X) -> X * X end.
```

Functions can be passed as parameters or returned.

### Guards and Clauses
```erlang
abs(N) when N < 0 -> -N;
abs(N) -> N.
```

### Lists
Ordered Collections \
Example:

```erlang
[H | Tail] = [1,2,5,7].  % Pattern matching. H = 1, Tail=[2,5,7]
```

### Tuples
Fixed-size Collections \
Example:

```erlang
{ok, Value} = {ok, 42}.
```

### Records
Records are key/values where the first element in the tuple is the label of the record. \
Example:
```erlang
-record(customer, {id = "", name = "", balance = 0.00}).

Customer1 = #customer{id = "99999", name = "Bob", balance = 1000},
Customer1UpdatedBalance = Customer1#customer{balance = 700}.
```

### Basic Data Types

**Numbers:** integers, floats: `21` or `99.9` \
**Tuples:** fixed-size collection: `{ok, 42}` \
**Lists:** ordered collection: `[1,2,3]` \
**Strings:** _list_ of characters: `"hello"` = `[104,101,108,108,111]` \
**Maps:** key-value pairs: `#{key => value}` \
**Records:** like maps with fixed fields \
**Binaries:** efficient for byte data: `<<1,2,3>>`.`

### Exceptions (error, exit, throw)
* `error(Reason).` ends execution in the current process and includes a stack trace.
* `exit/1` is an internal exit, similar to `error`.
* `throw(Reason).` does not carry the intent of crashing the process.

### Control Flow
No loops; recursion instead.
