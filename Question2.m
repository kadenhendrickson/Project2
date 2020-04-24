%%Implementation of the simplex method

%%Step 1: Create matrix for objective function and inequality contstraints
%%Note: Minimizing z = x1 + 2x2 + 4x3 + 5x4 is equivalent to Minimizing z = -x1 - 2x2 - 4x3 - 5x4
f = [1 2 4 5];

A = [1 0 0 0
    0 1 0 0
    0 0 1 0
    0 0 0 1];

b = [7 6 4 5];

%%Set lower and upper bounds of variables
lb = [];
ub = zeros(4,1);

%%add empty matrices for coefficients and initial guess
Aeq = [];
beq = [];

x0 = [];


options = optimoptions('linprog','Algorithm','dual-simplex','Display','iter')
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub,options)

