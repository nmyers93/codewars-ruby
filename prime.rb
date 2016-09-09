def prime(n)
	i = 0
	prime_arr = []
	(1..n).each do |j|
		i = 0
		(1..j).each do |x| 
			if j % x == 0
				i += 1
			end
		end
		if i == 2
			prime_arr << j
		end
	end
	print prime_arr
end

prime(7)
prime(6)