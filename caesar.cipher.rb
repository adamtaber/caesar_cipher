
def caesar_cipher(string, key)
  alphabet_downcase = ('a'..'z').to_a
  alphabet_upcase = ('A'..'Z').to_a
  string_array = string.split("")

  output_value = string_array.map do |substring|
    if (alphabet_downcase + alphabet_upcase).include?(substring) == false
      substring

    elsif alphabet_downcase.include?(substring) == true
      alphabet_index = (alphabet_downcase.find_index(substring) + key) % 26
      alphabet_downcase[alphabet_index]

    elsif alphabet_upcase.include?(substring) == true
      alphabet_index = (alphabet_upcase.find_index(substring) + key) % 26
      alphabet_upcase[alphabet_index]
    end
  end
  output_value.join
end

p caesar_cipher("Zhis is a Test!", 9000)
  
  
  
  
  
  
  
  
  
#  string_array.each do |x|
#    if alpha_array.include?(x.downcase) == false
#      return_value.push(x)
#    else alpha_index = alpha_array.find_index(x.downcase)
#    end
#    if alpha_array.include?(x.downcase) == true && (alpha_index >= (alpha_array.length - key_value))
#      if x != x.downcase
#        return_value.push(alpha_array[alpha_array.length - alpha_index - key_value].upcase)
#      else return_value.push(alpha_array[alpha_index + key_value])
#      end
#    elsif alpha_array.include?(x.downcase) == true
#      if x != x.downcase
#        return_value.push(alpha_array[alpha_index + key_value].upcase)
#      else return_value.push(alpha_array[alpha_index + key_value])
#      end
#    end
#  end
#  return_value.join
#end

#p caesar_cipher("ZhaT a sTriNg!", 1000000027)