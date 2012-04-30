function [x_ssn,it_ssn,t_ssn,x_sqp,it_sqp,t_sqp] = test_{var_function_name}(show)
    lambda = {var_lambda};
    a = {var_a};
    b = {var_b};
    x0 = {var_x0};
    tol = {var_tol};
    itmax = {var_itmax};
    A = [ -eye(length(a)); eye(length(b)) ];
    c = [ -a; b ];
    tic;
    %[x_ssn,fval_ssn,it_ssn] = active_set_strategy('{var_function_name}','{var_grad_function_name}','{var_hess_function_name}',lambda,A,c,x0,itmax,tol);
    [x_ssn,fval_ssn,it_ssn] = semismooth_newton('{var_function_name}','{var_grad_function_name}','{var_hess_function_name}',lambda,A,c,x0,itmax,tol);
    t_ssn = toc;
    x1 = sprintf('%.3f ',x_ssn);
    f1 = sprintf('f(x_ssn) = %.3f',fval_ssn);
    t1 = sprintf('solved in %.2f ms.',t_ssn*1000);
    str1 = ['x_ssn = [ ', x1, '], ', f1, ', it = ', num2str(it_ssn), ', ', t1];
    tic;
    [x_sqp,fval_sqp,it_sqp] = seq_quad_prog('{var_function_name_v0}','{var_grad_function_name_v0}','{var_hess_function_name_v0}',A,c,x0,itmax,tol);
    t_sqp = toc;
    x2 = sprintf('%.3f ',x_sqp);
    f2 = sprintf('f(x_sqp) = %.3f',fval_sqp);
    t2 = sprintf('solved in %.2f ms.',t_sqp*1000);
    str2 = ['x_sqp = [ ', x2, '], ', f2, ', it = ', num2str(it_sqp), ', ', t2];
    if ( nargin == 0 )
        show = 1;
    end
    if ( show == 1 )
        a = sprintf('%.3f ',a);
        b = sprintf('%.3f ',b);
        x0 = sprintf('%.3f ',x0);
        str0 = ['a = [ ', a, '], b = [ ', b, '], x0 = [ ', x0, ']'];
        disp(str0);
        disp(str1);
        disp(str2);
    end
end