# G Great bubbles

# def is_valid(arr)
#     total = arr.sum
#     arr.any? { |x| total - x == x} # bubble one is equals to other bubbles or no
# end

t = gets.to_i
results = []
t.times do
    n = gets.to_i # the number of bubles b caesar releases
    e = gets.split.map(&:to_i) # arr of bubbles
    res = 0

    freq = Hash.new(0) # frequency is the best medicine no cap fr fr
    arr = [] 
    sum = 0
    e.each do |index|
        # puts index
        sum += index
        freq[index] += 1
        res += 1 if sum % 2 == 0 && freq[sum / 2] > 0
    end

    results << res
end

results.each { |r| puts r }