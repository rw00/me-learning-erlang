## Erlang Concurrency Model
### Lightweight Processes

Erlang processes are lightweight and don't share memory. Millions of such processes can be run concurrently.

```erlang
spawn(fun() -> io:write("Hello from a process!~n") end).
```

### Message Passing

Processes communicate via asynchronous message passing:

```erlang
Pid = spawn(fun() -> receive Msg -> io:fwrite("Got: ~p~n", [Msg]) end end),
Pid ! hello.
```

### Mailboxes

Each process has a mailbox. Messages are handled with `receive` blocks and can use pattern matching.

### Linking & Monitoring

Processes can be linked to crash together or monitored to handle failures gracefully.

### Error Handling

Erlang encourages the "let it crash" approach, where supervisors restart failed processes instead of trying to recover them inside the process itself.
