def solution(input, markers)
	reg_arr = []
	markers.each {|x| reg_arr << "\s\\#{x}.*\$|"}
	new_reg = reg_arr.join("")
	new_reg.chop!
	re = /#{new_reg}/
	while input.match(re) != nil
		input.slice!(re)
	end
	return input
end

print solution("apples, pears # and bananas\ngrapes\nbananas !apples", ["#", "!"])
