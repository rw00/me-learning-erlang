## Erlang Fault Tolerance

### Let It Crash Philosophy

Instead of defensive coding, processes are allowed to fail. Supervisors restart them, keeping the system stable.

### Supervisors & Restart Strategies

Supervisors support restart strategies like:

* **one_for_one:** Restart only the failed process.
* **one_for_all:** Restart all children if one fails.
* **rest_for_one:** Restart the failed process and those started after it.

### Monitoring & Linking

Processes can monitor or link to others to be notified of failures and respond appropriately.

### Observability

For tracing, there's **recon_trace** that helps with debugging.
