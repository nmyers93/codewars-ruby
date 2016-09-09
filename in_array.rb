def in_array(array1, array2)
	i = 0
	j = 0
	new_arr = []
	while i < array2.length
		while j < array1.length
			if array2[i].include? array1[j]
				new_arr << array1[j]
				j += 1
			else
				j += 1
			end
		end
		i += 1
		j = 0
	end
	return new_arr.uniq.sort
end

print in_array(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"])
print in_array(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"])