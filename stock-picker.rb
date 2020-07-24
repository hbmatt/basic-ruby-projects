def stock_picker(array)
  best_array = [0,0,0]

  array.each_index do |day|
    i = day + 1

    while day < i && i < array.length
      first_price = array[day]
      second_price = array[i]
      profit = second_price - first_price

      if profit > best_array[2] 
        best_array[0] = day
        best_array[1] = i
        best_array[2] = profit
      end

      i += 1
    end

    if i == array.length - 1
      i = day + 2
    end
  end

  return best_array
end


puts "Enter a comma-separated list of stock prices:"
stock_prices = gets.chomp
stock_array = stock_prices.split(",")
stock_array = stock_array.map {|num| num.to_i}

final_array = stock_picker(stock_array)

puts "For a profit of $#{final_array[2]}, buy on day #{final_array[0]} and sell on day #{final_array[1]}."