def calc(expr)
	stack = []
	temp_arr = []
	temp_int = 0
	if expr.is_empty? ? return 0 : nil
	split_expr = expr.split(' ')
	split_expr.each { |x| 
		if x =~ /\d/
			stack << x.to_i
			puts "x is: " + x
		elsif x =~ /[^\d\s]/
			case 
			when x == '+'
				temp_arr = stack.pop(2)
				temp_int = temp_arr[0] + temp_arr[1] 
				stack << temp_int
				puts "temp int is: #{temp_int}"
			when x == '-'
				temp_arr = stack.pop(2)
				temp_int = temp_arr[0] - temp_arr[1] 
				stack << temp_int
				puts "temp int is: #{temp_int}"
			when x == '*'
				temp_arr = stack.pop(2)
				temp_int = temp_arr[0] * temp_arr[1] 
				stack << temp_int
				puts "temp int is: #{temp_int}"
			when x == '/'
				temp_arr = stack.pop(2)
				temp_int = temp_arr[0] / temp_arr[1] 
				stack << temp_int
				puts "temp int is: #{temp_int}"
			else

			end
		else
		end
	}
	return stack.pop
end

print calc('5 1 2 + 4 * + 3 -')