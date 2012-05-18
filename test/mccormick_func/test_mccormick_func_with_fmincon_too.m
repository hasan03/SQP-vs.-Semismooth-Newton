function test_mccormick_func_with_fmincon_too()
	u = [-1.5; -3];
	v = [4; 3];
	x0 = [0; -0.75];
	tol = 0.0001;
	itmax = 200;
	G = [];
	r = [];
	G = [ G; -eye(length(u)); eye(length(v)) ];
	r = [ r; -u; v ];
	tic;
	%[x_ssn,fval_ssn,it_ssn] = active_set_strategy('mccormick_func','grad_mccormick_func','hess_mccormick_func',G,r,x0,m0,itmax,tol);
	[x_ssn,fval_ssn,it_ssn] = semismooth_newton('mccormick_func','grad_mccormick_func','hess_mccormick_func',G,r,x0,itmax,tol);
	t_ssn = toc;
	x1 = sprintf('%.3f ',x_ssn);
	f1 = sprintf('f(x_ssn) = %.3f',fval_ssn);
	t1 = sprintf('solved in %.2f ms.',t_ssn*1000);
	str1 = ['x_ssn = [ ', x1, '], ', f1, ', it = ', num2str(it_ssn), ', ', t1];
	tic;
	[x_sqp,fval_sqp,it_sqp] = seq_quad_prog('mccormick_func','grad_mccormick_func','hess_mccormick_func',G,r,x0,itmax,tol);
	t_sqp = toc;
	x2 = sprintf('%.3f ',x_sqp);
	f2 = sprintf('f(x_sqp) = %.3f',fval_sqp);
	t2 = sprintf('solved in %.2f ms.',t_sqp*1000);
	str2 = ['x_sqp = [ ', x2, '], ', f2, ', it = ', num2str(it_sqp), ', ', t2];
	options = optimset('Algorithm','active-set','Display','off');
	tic;
	[x_fmc,fval_fmc,exitflag,output] = fmincon('mccormick_func',x0,G,r,[],[],[],[],[],options);
	t_fmc = toc;
	x3 = sprintf('%.3f ',x_fmc);
	f3 = sprintf('f(x_fmc) = %.3f',fval_fmc);
	t3 = sprintf('solved in %.2f ms.',t_fmc*1000);
	str3 = ['x_fmc = [ ', x3, '], ', f3, ', ', t3];
	u = sprintf('%.3f ',u);
	v = sprintf('%.3f ',v);
	x0 = sprintf('%.3f ',x0);
	str0 = ['u = [ ', u, '], v = [ ', v, '], x0 = [ ', x0, ']'];
	disp(str0);
	disp(str1);
	disp(str2);
	disp(str3);
end
