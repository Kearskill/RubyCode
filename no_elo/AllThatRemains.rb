# Problem A
# All that Remains

# def solve(chickens, secret_numbers)
#     loop do
#         previous = chickens.dup

#         to_remove = secret_numbers
#             .map { |i| i - 1 }
#             .select { |i| i >= 0 && i < chickens.size }
#             .sort.reverse # reverse to remove from end 

#         to_remove.each { |i| chickens.delete_at(i) }
#     break if chickens == previous
#     end
#     chickens.length
# end

t = gets.to_i
results = []

t.times do 
    k, c = gets.split.map(&:to_i) # k is number of the secret numbers and c is the initial number of chickens
    secret_numbers = gets.split.map(&:to_i).sort # secret numbers
    # chickens = (1..c).to_a
    # puts solve(chickens, secret_numbers)

    # GAA BINARY SEARCH IT IS
    low = 0
    high = c

    while low < high
        mid = (low + high + 1) / 2

        count = secret_numbers.bsearch_index  { |x| x > mid} || secret_numbers.size
        next_alive = mid - count
        if next_alive >= mid
            low = mid
        else 
            high = mid -1

        end

    end
    results << low


    # alive = c
    # loop do 
    #     count = secret_numbers.bsearch_index { |x| x > alive} || secret_numbers.size
    #     break if count == 0

    #     alive -= count
    # end
    # results << alive
end
results.each { |r| puts r}