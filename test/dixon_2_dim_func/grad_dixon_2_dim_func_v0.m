function g = grad_dixon_2_dim_func_v0(x)
	lambda = 0.00001;
	g = grad_dixon_2_dim_func(x) + lambda*x;
end