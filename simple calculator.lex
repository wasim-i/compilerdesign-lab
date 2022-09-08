%{
int op = 0,i;
float a, b;
%}
dig [0-9]+|([0-9]*)"."([0-9]+) 
add "+"
sub "-"
mul "*"
div "/"
pow "^"
ln \n
%%
{dig} {digi();}
{add} {op=1;}
{sub} {op=2;}
{mul} {op=3;}
{div} {op=4;}
{pow} {op=5;}
{ln} {printf("\n The Answer :%f\n\n",a);}
%%
digi()# Prerequisites
2
*.d
3
​
4
# Object files
5
*.o
6
*.ko
7
*.obj
8
*.elf
9
​
10
# Linker output
11
*.ilk
12
*.map
13
*.exp
14
​
15
# Precompiled Headers
16
*.gch
17
*.pch
18
​
19
# Libraries
20
*.lib
21
*.a
22
*.la
23
*.lo
24
​
25
# Shared objects (inc. Windows DLLs)
26
*.dll
27
*.so
28
*.so.*
29
*.dylib
30
​
31
# Executables
32
*.exe
33
*.out
34
*.app
35
*.i*86
36
*.x86_64
37
*.hex
38
​
39
# Debug files
40
*.dSYM/
41
*.su
42
*.idb
43
*.pdb
44
​
45
# Kernel Module Compile Results
{
if(op==0)
a=atof(yytext);
else
{
b=atof(yytext);
switch(op)
{
case 1:a=a+b;
break;
case 2:a=a-b;
break;
case 3:a=a*b;
break;
case 4:a=a/b;
break;
case 5:for(i=a;b>1;b--)
a=a*i;
break;
}
op=0;
}
}
main()
{
yylex();
}
yywrap()
{
return 1;
}
