class RomanNumerals
	def initialize
		@roman = {
			1000 => 'M',
			900 => 'CM',
			500 => 'D',
			400 => 'CD',
			100 => 'C',
			90 => 'XC',
			50 => 'L',
			40 => 'XL',
			10 => 'X',
			9 => 'IX',
			5 => 'V',
			4 => 'IV',
			1 => 'I',
		}
	end
	def to_roman(number)
		answer = ''
		while number > 0 do
			@roman.each do |num, sym|
				if number/num >= 1
					answer << sym 
					number -= num
					break
				end
			end
		end
		return answer
	end
	def self.from_roman(number)
    roman_numeral = @roman.invert
    number.scan(Regexp.new(roman_numeral.keys.join('|'))).inject(0) do |number, key|
    	number + roman_numeral[key]
    	end
  	end
end
RomanNumerals = RomanNumerals.new
puts RomanNumerals.to_roman(124)
