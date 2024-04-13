print "Insert the historical prices (8,2,3,...): "
prices = gets.chomp.split(",").map(&:to_i)

lowest_value = 0
highest_value = 0

for i in 0..prices.length
    current_low = prices[i]
    for j in i+1...prices.length
        current_high = prices[j]
        if (current_high - current_low) > (prices[highest_value] - prices[lowest_value])
            lowest_value = i
            highest_value = j
        end
    end
end

puts "Time to buy: %s. Time to sell: %s" % [lowest_value, highest_value]