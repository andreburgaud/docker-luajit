# Luajit Docker Image

Docker image explosing Luajit as a REPL (Read-Eval-Print-Loop).

The repl is wrapped with `rlwrap` https://linux.die.net/man/1/rlwrap allowin to recall previous command with the keyboard arrows, navigate on the same line and access the command line history by typing `!` + `<prefix>` + `TAB`.

The `rlwrap` multiline option is passed at the command line to provide edition of a block of code with `vim` when entering `CTRL`+`^`.


# Development

```
$ docker build -t luajit .
$ docker run --rm -it luajit
$ docker run --rm -it luajit
LuaJIT 2.1.0-beta3 -- Copyright (C) 2005-2017 Mike Pall. http://luajit.org/
JIT: ON SSE2 SSE3 SSE4.1 BMI2 fold cse dce fwd dse narrow loop abc sink fuse
>
```

# Resources

* http://luajit.org/
