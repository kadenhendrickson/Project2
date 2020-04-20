%%Implementation of the simplex method

%%Step 1: Create matrix for objective function and inequality contstraints
%%Note: Maximixing z = 20x + 10y + 15z is equivalent to Minimizing         
% z = -20x - 10y - 15z
f = [-20 -10 -15];

A = [3 2 5
    2 1 1
    1 1 3
    5 2 4];

b = [55 26 30 57];

%%Set lower and upper bounds of variables
lb = zeros(3,1)
ub = [];

%%add empty matrices for coefficients and initial guess
Aeq = [];
beq = [];

x0 = [];


options = optimoptions('linprog','Algorithm','dual-simplex','Display','iter')
[x,fval] = linprog(f,A,b,Aeq,beq,lb,ub,options)

