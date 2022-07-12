def caesar_cipher(string, key)
  alphabet_downcase = ('a'..'z').to_a
  alphabet_upcase = ('A'..'Z').to_a
  string_array = string.split('')
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
