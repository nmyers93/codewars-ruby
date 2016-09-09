def validate(n)
  cred_num = n
  cred_array = []
  doubled = []
  selected = []
  sum = 0
  converted = cred_num.to_s.split('')
  converted.each {|x| cred_array << x.to_i}
  if cred_array.count <= 16
    if cred_array.count % 2 == 0
      doubled = cred_array.map.with_index{|num, index| index.even? ? num * 2 : num }
      doubled.each {|x| x > 9 ? selected << (x - 9) : selected << x}
      selected.each {|x| sum += x}
      return sum % 10 == 0 ? true : false 
    elsif cred_array.count % 2 != 0
      doubled = cred_array.map.with_index{|num, index| index.even? ? num : num * 2}
      doubled.each {|x| x > 9 ? selected << (x - 9) : selected << x}
      selected.each {|x| sum += x}
      return sum % 10 == 0 ? true : false 
    else
       return false
    end
  else
    return false
  end
end
