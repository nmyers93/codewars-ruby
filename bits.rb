def count_bits(n)
	arr = []
	new_num = n
	while new_num > 0 do 
		arr << new_num % 2 #todo
		new_num /= 2
	end
	bits = arr.select {|a| a == 1}
	puts bits.length
end

count_bits(1234)
