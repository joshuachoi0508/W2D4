require 'byebug'

def my_min_phase_1(arr)
  min = arr[0]
  arr.each do |el1|
    arr.each do |el2|
      min = el1 if el1 < el2 && el1 < min
    end
  end
  return min
  
  # min = true
  # arr.each do |el1|
  #   min = true
  #   arr.each do |el2|
  #     min = false if el2 < el1
  #   end
  #   if min 
  #     return el1
  #   end
  # end
end

def my_min_phase_2(arr)
  min = arr[0] 
  arr.each do |el|
    min = el if el < min 
  end 
  min 
end 

def sub_sums_phase_1(arr)
  subarrays = [] 
  arr.each_with_index do |el1, i1|
    subarr = [el1]
    subarrays << subarr.dup
    (i1+1...arr.length).each do |i2|
      # byebug
      el2 = arr[i2] 
      subarr << el2 
      subarrays << subarr.dup 
    end 
    subarr = []
  end 
  
  max = subarrays[0].reduce(:+)
  subarrays.each do |subarr|
    max = subarr.reduce(:+) if subarr.reduce(:+) > max 
  end 
  max
end 

def sub_sums_phase_2(arr)
  largest_sum = arr[0]
  arr.each_with_index do |el, i|
    sum = el + arr[i + 1]
    largest_sum = sum if sum > largest_sum
  end  
end