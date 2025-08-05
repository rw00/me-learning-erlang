## Erlang Common Behaviors

### What is OTP?

OTP (Open Telecom Protocol) is a set of libraries and design principles for building robust Erlang systems.

### Common Behaviors

* **supervisor:** Manages child processes and restarts them on failure.
* **gen_server:** Generic server process for request/response style.
* **gen_statem:** State machine behavior for managing complex state transitions.
* **gen_event:** Event handling with publish/subscribe.

### Supervision Trees

Supervisors can be nested, forming a supervision tree that ensures fault tolerance.

### Application Structure

OTP applications bundle code, configuration, and supervision trees.
Releases make it easy to deploy and upgrade systems.
