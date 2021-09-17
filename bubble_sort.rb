def bubble_sort(array)
  return array if array.empty?
  loop do
    swapped = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end


my_array = [1,4,7,2,6]

def bubble_sort_by(str_arry)
  str_arry.length.times do
    str_arry.each_with_index do |value, index|
      next unless index < str_arry.length - 1

      sort_value = yield(value, str_arry[index + 1])
      if sort_value.positive?
        str_arry[index] = str_arry[index + 1]
        str_arry[index + 1] = value
      end
    end
  end
  str_arry
end
display = bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
p display