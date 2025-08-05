# me-learning-erlang

## Overview

Erlang is a functional programming language that is compiled to bytecode and runs in a VM called BEAM. \
It was designed around 1990 by Ericsson for building concurrent, distributed, and fault-tolerant systems.

Erlang emphasizes on the following principles:
* immutable data and pure functions.
* lightweight process-based concurrency using the actor model.
* message passing instead of shared memory.
* high availability via built-in support for hot code swapping, supervision trees and fault-isolation.
* soft real-time performance and scalability across cores and nodes.

It is mostly used in telecom and messaging apps.

Programs usually spawn many lightweight processes that don't share memory. \
These processes communicate via message-passing in which the messages are queued in the destination mailbox. \
Sending messages is the same whether it's in a local VM or across the Internet to another service.

The Erlang shell `erl` is an interactive interpreter for testing code on the fly.

### Compiling and Running

0. Start shell: `erl`
1. Compile: `c(my_module).`
2. Run: `my_module:my_func(SomeParam).`
3. Quit: `q().`

### Outline
0. Overview
1. [Language Basics](LanguageBasics.md)
2. [Core Data Structures](CoreDataStructures.md)
