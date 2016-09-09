def recover_secret(triplets)
	lookup_arr = []
	sorted_arr = []
	key_map = {}
	triplets.each {|x| x.each {|i| lookup_arr << i} }
	lookup_arr.uniq.each.with_index {|x, i| key_map[x] = i}
	(1..triplets.length+1).each do 
		triplets.each {|value|
			if key_map[value[0]] >= key_map[value[1]]
				key_map[value[0]] -= 1
			end	
			if key_map[value[1]] >= key_map[value[2]]
				key_map[value[1]] -= 1
			end }
	end
	temp_arr = key_map.sort_by {|key, value| value}
	temp_arr.each {|x| sorted_arr << x[0]}
	return sorted_arr.join('')
end

triplets_1 = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]


recover_secret(triplets_1)
