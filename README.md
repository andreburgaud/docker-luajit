# Luajit Docker Image

Docker image explosing Luajit as a REPL (Read-Eval-Print-Loop).

The repl is wrapped with `rlwrap` https://linux.die.net/man/1/rlwrap allowing to recall previous commands with the keyboard arrows and navigate on the same line to modify an existing expression.

The `rlwrap` multiline option is passed at the command line to provide edition of a block of code with `vim` when entering `CTRL`+`^`.

# Development

```
$ docker build -t luajit .
$ docker run --rm -it luajit
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/
JIT: ON SSE2 SSE3 SSE4.1 BMI2 fold cse dce fwd dse narrow loop abc sink fuse
> print(jit.arch)
x64
print(jit.os)
Linux
print(jit.version)
LuaJIT 2.1.0-beta3
```

# Resources

* http://luajit.org/
