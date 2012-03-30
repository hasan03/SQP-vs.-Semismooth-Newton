function H = hess_himmelblau_func_v0(x)
	lambda = 0.001;
	H = hess_himmelblau_func(x) + lambda*eye(length(x));
end