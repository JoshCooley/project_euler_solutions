# project_euler_solutions

This repo contains my solutions for the problems at https://projecteuler.net, sorted by programming language.

## Rules
Some notes about what I'm allowing myself to do in each language:
### `bash`
* **Current version**: GNU bash, version 4.4.12(1)-release (x86_64-apple-darwin16.3.0), but I'm not restricting myself in any way, other than to disallow reverting to older version simply to use a deprecated feature. I may revert to work around environmental quirks though (e.g. with a newer bash on macOS, though I haven't seen any issues yet).
* I can use GNU coreutils. The included `factor` command is a huge advantage; it will factor any value that can fit in an unsigned integer. It's almost cheating though, so I may implement my own sieve function later.
* No guarantee of POSIX compliance. Expect bashisms.
* Nothing OS specific. This means no 1337 procfs hax, no assumptions about file descriptors for I/O streams, etc.