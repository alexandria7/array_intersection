# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n * m) (where n is the length of the shorter array and m is the length of the longer array)
# Space complexity: O(n) if n < m (where n is the length of the shorter array and m is the length of the longer array)

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

    i = 0
    intersection_array = []

    while i < smaller_array.length
      j = 0
      while j < larger_array.length
        if smaller_array[i] == larger_array[j]
          intersection_array << smaller_array[i]
        end
        j += 1
      end
      i += 1
    end
  end

  return intersection_array
end
