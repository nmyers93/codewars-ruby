def top_3_words(text)
	final_arr = []
	words = text.downcase.gsub(/[^a-zA-Z\s']/, '').split(' ')
	frequencies = Hash.new(0)
	words.each {|word| word =~ /[a-z]/ ? frequencies[word] += 1 : nil}
	frequencies = frequencies.sort_by {|a, b| b}
	final_hash = frequencies.pop(3)
	final_hash.reverse!
	final_hash.each {|word, amount| final_arr << word}
	return final_arr
end

print top_3_words("In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.")