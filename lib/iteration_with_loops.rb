#require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results =[]
  row_index = 0
  while row_index < src.count do
    element_index = 0
    min_value = src[0][0]
    while element_index < src.count do
      if src[row_index][element_index] < min_value
        min_value = src[row_index][element_index]
        binding.pry
      end
      outer_results.push(min_value)
      element_index += 1
    end
    row_index += 1
  end
end
