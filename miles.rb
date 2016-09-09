def is_interesting(number, awesome_phrases)
	test_string = number.to_s
	test_inc_1 = (number + 1).to_s
	test_inc_2 = (number + 2).to_s

	inc = '1234567890'
	dec = '9876543210'

	awesome_phrases.each {|x| 
		if number == x
			return 2
		elsif number + 1 == x || number + 2 == x
			return 1
		else
		end}
	case
	when number < 100
		return 0
	when test_string.match(/\d[0]{2,}/)
		return 2
	when test_inc_1.match(/\d[0]{2,}/) || test_inc_2.match(/\d[0]{2,}/)
		return 1
	when test_string.match(/\b(\d)\1+\b/)
		return 2
	when test_inc_1.match(/\b(\d)\1+\b/) || test_inc_2.match(/\b(\d)\1+\b/)
		return 1
	when inc.match(test_string) != nil
		return 2
	when inc.match(test_inc_1) || inc.match(test_inc_2) != nil
		return 1
	when dec.match(test_string) != nil
		return 2
	when dec.match(test_inc_1) || dec.match(test_inc_2) != nil
		return 1
	when test_string == test_string.reverse
		return 2
	when test_inc_1 == test_inc_1.reverse || test_inc_2 == test_inc_2.reverse
		return 1
 	else
		return 0
	end
end

puts is_interesting(100, [])
puts is_interesting(1111, [])
puts is_interesting(99, [])
puts is_interesting(1234, [])
puts is_interesting(54321, [])
puts is_interesting(12321, [])
puts is_interesting(1337, [20, 55, 1337])
puts is_interesting(1336, [55, 1337])
puts is_interesting(11208, [1337, 256])
puts is_interesting(11209, [1337, 256])