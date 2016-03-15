# Implement an algorithm to determine if a string has all unique characters.

def has_all_unique_chars?(string)
  return false if string.length > 128

  all_chars = {}

  string.each_char do |string_char|
    return false if all_chars.has_key?(string_char)
    all_chars[string_char] = true
  end

  true
end

# Less effective version, doesn't use hash

def is_unique?(string)
  all_chars = string.chars

  string.chars.each_with_index do |char, index|
    all_chars[1..-1].each do |sub_char|
      if sub_char == char
        return false
      end
    end
    all_chars.shift
  end

  true
end