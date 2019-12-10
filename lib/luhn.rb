module Luhn
  
  def self.is_valid?(number)
    sum = 0
    num = number.to_s.split("")
    num.reverse.each_with_index do |dig, ind|
      x = dig.to_i
      x *= 2 if ind.odd?
      x -= 9 if x >= 10
      sum += x
    end
    
    sum % 10 == 0

  end
end



