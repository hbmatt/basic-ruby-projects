def bubble_sort(array)
  i = array.length

  while i > 0 do
    array.each_index do |index|
      left = array[index]
      right = array[index + 1]
    
      if right == nil
        array
      elsif left > right
        array[index] = right
        array[index + 1] = left
      end
    end

    i -= 1
  end

  return array
end

puts "Enter a comma-separated list of integers:"
num_list = gets.chomp
num_array = num_list.split(',')
num_array = num_array.map { |num| num.to_i }

sorted_array = bubble_sort(num_array)

p sorted_array