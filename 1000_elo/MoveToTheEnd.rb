# https://codeforces.com/problemset/problem/2104/B
# 1000 elo

n = gets.to_i

n.times do # loop through all number of test cases
    lala = gets.to_i # all number of things
    a = gets.chomp.split.map(&:to_i) # data gotten 
    res = '' # to prepare output
    lala.times do |i, k| # loop all 
        (1..a.length()).each do |i| # 
            
            
        end
        res += a[i]
        res += k.to_s + " "
    end
    puts res
end        




