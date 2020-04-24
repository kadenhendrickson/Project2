
%%Step 1: Create matrix for objective function and inequality contstraints
%%Note: Maximizing z = x1 + x2 + 35 is equivalent to Minimizing z = -x1 - x2
f = [-1 -1];

A = [25 22 
    15 32 
    1 0 
    0 1 ];

b = [360; 240; 15; 20];

%%Set lower and upper bounds of variables
lb = zeros(4,1);
ub = [];

%%add empty matrices for coefficients and initial guess
Aeq = [];
beq = [];

x0 = [];


options = optimoptions('linprog','Algorithm','dual-simplex','Display','iter')
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub,options)

