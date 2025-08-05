## Erlang Best Practices & Idioms

### OTP & Supervision

Always use supervision trees and OTP behaviors for maintainable, fault-tolerant applications.

### Pattern Matching

Use pattern matching instead of conditional statements wherever possible for clarity and conciseness.

### State Management

Keep state isolated in processes. Avoid global mutable state.

### Common Pitfalls

* Avoid long-running blocking operations in a single process.
* Be careful with message queue growth in heavily loaded processes.
* Use tail recursion to prevent stack overflows in recursive functions.
