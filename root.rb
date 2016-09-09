def digital_root(n)
	num = n
	while num > 9
		converted_arr = []
		arr = num.to_s.split('')
  		arr.each {|x| converted_arr << x.to_i }
  		num = 0
  		converted_arr.each {|x| num += x} 
  	end
  	puts num
end

digital_root(942)
digital_root(132189)
digital_root(493193)
digital_root(16)