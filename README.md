# CFG with Lex and Yacc

## Example 1

This accepts a language which contains same number of a's and b's, and any number of c's.

Examples of accepted strings:

- ab
- c
- aabbc
- aaaabbbbcccc

Examples of invalid strings:

- a
- b
- caabb

## Example 2

Validate a arithmatic expression containing +-*/().

Examples of accepted strings:

- 1+2+3
- 45/2*(5+3)/3-12

Examples of invalid strings:

- 1+2+(3

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
