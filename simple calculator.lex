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
a=a*i;•
68
25
69
# Shared objects (inc. Windows DLLs)
70
26
71
*.dll
72
27
73
*.so
74
28
75
*.so.*
76
29
77
*.dylib
78
30
79
•
80
31
81
# Executables
82
32
83
*.exe
84
33
85
*.out
86
34
87
*.app
88
35
89
*.i*86
90
36
91
*.x86_64
92
37
93
*.hex
94
38
95
•
96
39
97
# Debug files
98
40
99
*.dSYM/
100
41
101
*.su
102
42
103
*.idb
104
43
105
*.pdb
106
44
107
•
108
45
109
# Kernel Module Compile Results
110
{
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
