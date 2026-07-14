---
name: pkill self-match over one-shot SSH commands
description: Why a pkill -f command sent as a single ssh remote command can silently kill the connection and look like an SSH drop.
---

`ssh host 'pkill -f mitmdump; ...'` can fail with exit 255 and zero output even when the pattern legitimately matches a real process. `pkill -f` matches against the full command line of every process, including the very shell invocation that is running `pkill -f mitmdump` itself (its argv literally contains the string "mitmdump"). When it kills itself (or its parent shell) mid-execution, the SSH session drops before sending back the exit status or any buffered output — indistinguishable from a flaky network unless you notice the pattern always fails after working `echo` tests succeed right next to it.

**How to apply:** kill by explicit PID (from a prior `ps aux` snapshot) instead of `pkill -f <substring-of-the-command-itself>` when doing cleanup via one-shot SSH commands.
