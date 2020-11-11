def sort(arr)
  array_length = arr.length

  return arr if array_length < 2
  max_index = array_length - 2

  swapped_elements = true

  while swapped_elements
    swapped_elements = false

    (0..max_index).each do |i|
      element = arr[i]
      next_element = arr[i+1]

      if element > next_element
        # Multiple assignment
        arr[i], arr[i+1] = next_element, element
        swapped_elements = true
      end
    end
  end

  arr
end

p sort([10,2,12,2,1])

p sort([])

p sort([1,2,3,2,2,2])

p sort([3,2,1,2,2,3])
