function H = hess_func_for_problem_v_exp_1(x)
	n = length(x);
	efx = exp(norm(x)^2);
	H = 2*efx*eye(n);
	for k=1:n
		for l=1:n
			H(k,l) = H(k,l) + 4*efx*x(k)*x(l);
		end
	end
end