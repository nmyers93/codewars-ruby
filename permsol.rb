def permsol(string)
	final_arr = []
	char_arr = string.split('')
	perm_arr = char_arr.permutation.to_a
	perm_arr.each {|subarray| final_arr << subarray.join}
	return final_arr.uniq
end

permsol('aabb')