# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n) + O(m) = O(n + m) (where n is the length of the shorter array and m is the length of the longer array)
# Space complexity: O(2n) = O(n) if n < m (where n is the length of the shorter array and m is the length of the longer array)

def intersection(array1, array2)
  if array1 == nil || array2 == nil
    intersection_array = []
  else
    if array1.length < array2.length
      smaller_array = array1
      larger_array = array2
    else
      smaller_array = array2
      larger_array = array1
    end

    intersection_array = [] # s.c = O(n)
    small_hash = Hash.new() # s.c = O(n)

    # t.c. = O(n)
    smaller_array.each do |num|
      small_hash[num] = 1
    end

    # t.c. = O(m)
    larger_array.each do |num|
      if small_hash.include? num
        intersection_array << num
      end
    end

    return intersection_array
  end
end
