def decodeMorse(morseCode)
	morse_dict = {
		"a" => ".-",
		"b" => "-...",
		"c" => "-.-.",
		"d" => "-..",
		"e" => ".",
		"f" => "..-.",
		"g" => "--.",
		"h" => "....",
		"i" => "..",
		"j" => ".---",
		"k" => "-.-",
		"l" => ".-..",
		"m" => "--",
		"n" => "-.",
		"o" => "---",
		"p" => ".--.",
		"q" => "--.-",
		"r" => ".-.",
		"s" => "...",
		"t" => "-",
		"u" => "..-",
		"v" => "...-",
		"w" => ".--",
		"x" => "-..-",
		"y" => "-.--",
		"z" => "--..",
		" " => " ",
		"1" => ".----",
		"2" => "..---",
		"3" => "...--",
		"4" => "....-",
		"5" => ".....",
		"6" => "-....",
		"7" => "--...",
		"8" => "---..",
		"9" => "----.",
		"0" => "-----",
		"SOS" => "···−−−···"
	}
	new_arr = []
	char_arr = []
	word_arr = morseCode.split('   ')
	word_arr.each do |x| 
		x.split(' ').each {|i| morse_dict.each {|key, value| i == value ? char_arr << key : nil}}
		new_arr << char_arr.join
		new_arr << ' '
		char_arr = []
	end
	new_arr.pop
	final = new_arr.join
	print final
end

decodeMorse('.... . -.--   .--- ..- -.. .')
decodeMorse('···−−−···')