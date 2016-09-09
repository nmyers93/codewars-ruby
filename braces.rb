def validBraces(braces)
	brace_map = {
		"(" => ")",
		"{" => "}",
		"[" => "]",
	}
	split_arr = braces.split('')
	re_arr = split_arr.reverse
	split_arr.each.with_index do |x, i|  
		if re_arr[i] != brace_map[x]
			print "No match"
		else
			split_arr.pop
			print "Matches so far"
		end
	end
end

validBraces("()")