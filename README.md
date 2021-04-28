## **Compiler-Design-Lab-Programs**

Contains source codes for a few lex and yacc programs

### Executing Lex file say pgm.l:
#### lex pgm.l
#### cc lex.yy.c -ll
#### ./a.out

### Executing YACC file and corresponding lex file say pgm.l and pgm.y:
#### lex pgm.l
#### yacc -d pgm.y
#### cc lex.yy.c y.tab.c -ll
#### ./a.out

Ctrl+D combination can be used to terminate the execution


