require 'byebug'

def brute_force(arr, target)
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target 
    end
  end
  false
end

def sorting(arr, target)
  arr.each do |el1|
    number = target - el1
    
    if arr.bsearch { |el2| el2 >= number && el2 <= number }
      return true 
    end 
  end
  false
end
