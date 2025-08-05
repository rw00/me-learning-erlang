# me-learning-erlang

## Overview

Erlang is a functional programming language that is compiled to bytecode, designed for building concurrent, distributed, and fault-tolerant systems.

It emphasizes on the following:
* immutable data and pure functions.
* lightweight process-based concurrency using the actor model.
* message passing instead of shared memory.
* high availability via built-in support for hot code swapping, supervision trees and fault-isolation.
* soft real-time performance and scalability across cores and nodes.

It is mostly used in telecom and messaging apps.

### Syntax
* A dot `.` indicates the end of a statement or declaration. \
For example, module and function declarations and definitions should end with `.`

```erlang
-include_lib("eunit/include/eunit.hrl").
```

* A comma `,` indicates the end of one sequential expression in a block where order matters, like inside a function.
```erlang
print_sum(A, B) ->
    Sum = A + B,
    io:format("The sum of A and B is ~p", [Sum]).
```

* For expressions like `case` and `receive`, branches should be punctuated with a semicolon`;`
The last branch, though, should **not** be punctuated at all.

* `end` is used to indicate the end of expressions or function variables.

#### Variables
* Variables and function parameters must start with Uppercase.
* Modules and function names are snake_case.
Example: `MyVariable = 7.`

#### Atoms
Basically, variables which value equals the name. \
Atoms must start with lowercase or are quoted. \
Example: `ok = 'ok'.`

#### Lists
Ordered Collections \
Example:

```erlang
[1, 2, 3].
[Head | Tail] = [1,2,3].  % Pattern matching
```

#### Tuples
Fixed-size Collections \
Example:

```erlang
{ok, 123}.
```

#### Records
Records are key/values where the first element in the tuple is the label of the record. \
Example:
```erlang
-record(customer, {id = "", name = "", balance = 0.00}).

Customer1 = #customer{id = "99999", name = "Bob", balance = 1000},
Customer1UpdatedBalance = Customer1#customer{balance = 700}.
```

#### Functions
Functions are defined with pattern matching on parameters. \
Example:

```erlang
factorial(0) -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).
```

#### Guards and Clauses
```erlang
abs(N) when N < 0 -> -N;
abs(N) -> N.
```

#### Exceptions (error, exit, throw)
* `error(Reason).` ends execution in the current process and includes a stack trace.
* `exit/1` is an internal exit, similar to `error`.
* `throw(Reason).` does not carry the intent of crashing the process.

#### Modules

A module is defined in a file with the same name.
A module exports its functions.

```erlang
-module(math).
-export([factorial/1]). % /1 means the function accepts one parameter
```

### Compiling and Running

1. Compile: `c(my_module).`
2. Run: `my_module:my_func().`
3. Quit: `q().`
