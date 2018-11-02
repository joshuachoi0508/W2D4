def first_anagram?(str1, str2)
  possible_anagrams = str1.chars.permutation.to_a
  possible_anagrams.include?(str2.chars)
end 

def second_anagram?(str1, str2)
  str2_array = str2.chars 
  str1.chars.each_with_index do |letter, i|
    delete_idx = str2_array.find_index(letter)
    str2_array.delete_at(delete_idx)
  end 
  
  return true if str2_array.empty?
  false 
end 

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end 

def fourth_anagram?(str1, str2)
  letters_counts1 = Hash.new(0)
  letters_counts2 = Hash.new(0)
  
  str1.chars.each do |letter|
    letters_counts1[letter] += 1 
  end 
  
  str2.chars.each do |letter|
    letters_counts2[letter] += 1 
  end 
  
  letters_counts1 == letters_counts2
end 



def fifth_anagram?(str1, str2)
  letters_counts1 = Hash.new(0)

  str1.chars.each do |letter|
    letters_counts1[letter] += 1 
  end 
  
  str2.chars.each do |letter|
    letters_counts1[letter] -= 1 
  end 
  
  letters_counts1.values.all?(0)
end 