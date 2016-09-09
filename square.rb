class Array
  def square
  	new_arr = []
  	self.each{|x| new_arr << x*x}
  	return new_arr
  end
  def cube
  	new_arr = []
  	self.each{|x| new_arr << x**3}
  	return new_arr
  end
  def average
  	error = 'NaN'
  	num = 0
  	if self.length == nil
  		return error
  	else
		self.each{|x| num += x}
		avg = num / self.length
  		return avg
  	end
  end
  def sum
  	num = 0
  	self.each{|x| num += x}
  	return num
  end
  def even
  	new_arr = []
  	self.each{|x| x.even? ? new_arr << x : nil}
  	return new_arr
  end
  def odd
  	new_arr = []
  	self.each{|x| x.odd? ? new_arr << x : nil}
  	return new_arr
  end
numbers = [1, 2, 3, 4, 5]
print numbers.square()
puts ''
print numbers.cube()
puts ''
print numbers.average()
puts ''
print numbers.sum()
puts ''
print numbers.even()
puts ''
print numbers.odd()
  # now fill in the rest
end