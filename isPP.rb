def isPP(n)
	base = 2
	power = 0
	arr = []
	while base < n
		power = Math.log(n, base)
		if base**power.to_i == n
			arr << base
			arr << power.to_i
			return arr
		else
			base += 1
		end
	end
	return nil
end

print isPP(81)