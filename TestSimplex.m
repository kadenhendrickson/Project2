
%%objective function
f = [20;10;15];

%%inequality contraints
A = [3 2 5; 2 1 1; 1 1 3; 5 2 4];
b = [55; 26; 30; 57];

%%Lower and upper bounds of variables
lb = zeros(3,1);
ub = [1e4;1e4;1e4];

%%add empty matrices for coefficients and initial guess
Aeq = [];
beq = [];

x0 = [];



options = optimoptions('linprog','Algorithm','dual-simplex','Display','iter')
[x,fval,exitflag,output] = linprog(f,A,b,Aeq,beq,lb,ub,x0,options)

