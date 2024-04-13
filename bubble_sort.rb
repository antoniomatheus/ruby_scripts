print "List of numbers to sort (8,5,3,10...): "
numbers = gets.chomp.split(",").map(&:to_i)

for last_index in 0..numbers.length - 1
    for i in 0..(numbers.length - last_index - 2)
        left = numbers[i]
        right = numbers[i + 1]
        if left > right
            numbers[i] = right
            numbers[i + 1] = left
        end
    end
end

puts numbers.join(",")