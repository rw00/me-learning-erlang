## Erlang Core Data Structures

### Lists
* Ordered, singly linked collections.
* Created with square brackets: `[1, 2, 3].`
* Head | Tail notation:
```erlang
[H | T] = [1,2,3].  % H=1, T=[2,3]
```

* Common operations:
Concatenation:
```erlang
[1,2] ++ [3,4]. % [1,2,3,4]
```
Difference:
```erlang
[1,2,3,1] -- [2,1]. → [3,1]
```

* List comprehensions:
```erlang
[X*2 || X <- [1,2,3,5,7,9], X > 1]. % [4,6,10,14,18]
```

### Tuples
* Fixed-size, ordered groupings.
* Created with curly brackets: `{person, "Alice", 1996}.`
* Used for returning multiple values or tagging results.
* Indexed by position (not ideal for structured data — use records or maps).
