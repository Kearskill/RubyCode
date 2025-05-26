# E. The Service Club and the new Presidential search

# t = gets.to_i
# results = []

# n is the number of candidates (1 - 26 in ABC)
# m is the number of unique ballot type 
n, m = gets.split.map(&:to_i) 

m.times do
    p, n = gets.split # p is the number of club members submitted the ballot
    n = gets.split.map(&:to_a) # n is the string of characters specifying the ballot (a,b,c,d,e)
    p = p.to_i
    
end


# results << answer

results.each { |r| puts r}