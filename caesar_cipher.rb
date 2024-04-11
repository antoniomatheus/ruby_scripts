print "Text to encrypt: "
text = gets.chomp

print "Number of shifts: "
shifts = gets.chomp.to_i

result = ""

text.each_char do |c|
    if c.match?(/[[:alpha:]]/)
        if c == c.upcase
            base = "A".ord
        else
            base = "a".ord
        end

        regular_ord = c.ord - base
        shifted_ord = (regular_ord + shifts) % 26
        final_ord = shifted_ord + base

        result += final_ord.chr
    else
        result += c
    end
end

puts result