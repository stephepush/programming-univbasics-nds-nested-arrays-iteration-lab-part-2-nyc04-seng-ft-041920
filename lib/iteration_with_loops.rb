#require 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results =[] #New array that all min values will be "pushed" to
  row_index = 0
  while row_index < src.count do
    element_index = 0
    min_value = 1000
    inner_results = []
    while element_index < src[row_index].count do
      if src[row_index][element_index] < min_value #if nested item is less than minimum value
        min_value = src[row_index][element_index] #then min_value is assigned that value
        #binding.pry
      end
      #outer_results.push(min_value)
      element_index += 1
    end
    outer_results << lowest_value # "<<" is ruby's shortcut for pushing a single array item to an array
    row_index += 1
  end
  outer_results
end
