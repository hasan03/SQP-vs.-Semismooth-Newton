function y = rosenbrock_func_1_v0(x)
	lambda = 0.01;
	y = rosenbrock_func_1(x) + (lambda/2)*norm(x)^2;
end