function g = grad_dixon_func_4(x)
	n = 5;
	g = approx_gradient('dixon_func_4',x,0.001);
end