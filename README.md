# CFG with Lex and Yacc

This accepts a language which contains same number of a's and b's, and any number of c's.

Example accepted strings:

- ab
- aabbc
- aaaabbbbcccc

Examples of invalid strings:

- a
- b
- c
- caabb

## How to compile?

Install `gcc`, `flex` and `bison` packages in linux.

```
sudo apt install gcc flex bison
```

Compile commands in this order:

```
lex cfg.l
yacc -d cfg.y
cc lex.yy.c y.tab.c -ll
```

Run the compiled application like this:

```
.\a.out
```
