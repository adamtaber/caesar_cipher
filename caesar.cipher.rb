
def caesar_cipher(string, key)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  alpha_array = alphabet.split("")
  string_array = string.split("")
  return_value = []
  key_value = key % 26
  string_array.each do |x|
    if alpha_array.include?(x.downcase) == false
      return_value.push(x)
    else alpha_index = alpha_array.find_index(x.downcase)
    end
    if alpha_array.include?(x.downcase) == true && (alpha_index >= (alpha_array.length - key_value))
      if x != x.downcase
        return_value.push(alpha_array[alpha_array.length - alpha_index - key_value].upcase)
      else return_value.push(alpha_array[alpha_index + key_value])
      end
    elsif alpha_array.include?(x.downcase) == true
      if x != x.downcase
        return_value.push(alpha_array[alpha_index + key_value].upcase)
      else return_value.push(alpha_array[alpha_index + key_value])
      end
    end
  end
  return_value.join
end

p caesar_cipher("ZhaT a sTriNg!", 1000000027)