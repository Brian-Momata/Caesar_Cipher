def cipher(string, num)
  uppercase = ("A".."Z").to_a
  lowercase = ("a".."z").to_a
  string_array = string.split(" ")
  encrypted_string = string_array.collect do |sub_string|
		split_string = sub_string.chars.collect do |x|
      if uppercase.include?(x)
        x = uppercase[uppercase.index(x) - num]
      elsif lowercase.include?(x)
        x = lowercase[lowercase.index(x) - num]
      else
        x = x
      end
    end
    split_string.join
  end
  encrypted_string.join(" ")
end