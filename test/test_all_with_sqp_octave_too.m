function test_all_with_sqp_octave_too()
	warning('off','all')
	disp('test_problem_A_example_16_2_nocedal_wright');
	test_problem_A_example_16_2_nocedal_wright_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_A_simple_example');
	test_problem_A_simple_example_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_G_example_with_diamond_area');
	test_problem_G_example_with_diamond_area_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_bazaraa_shetty');
	test_problem_v_bazaraa_shetty_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_beale');
	test_problem_v_beale_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_colville');
	test_problem_v_colville_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_exp');
	test_problem_v_exp_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_exp_1');
	test_problem_v_exp_1_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_himmelblau');
	test_problem_v_himmelblau_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_norm');
	test_problem_v_norm_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_quadratic');
	test_problem_v_quadratic_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_quadratic_1');
	test_problem_v_quadratic_1_with_sqp_octave_too(1);
	disp(sprintf('\n'));
	disp('test_problem_v_rosenbrock');
	test_problem_v_rosenbrock_with_sqp_octave_too(1);
	disp(sprintf('\n'));
end