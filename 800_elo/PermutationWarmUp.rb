# https://codeforces.com/problemset/problem/2108/A
# 800 elo
# puts 'Input number of test cases:'
n = gets.to_i

n.times do
    temp = gets.to_i
    res = (temp**2) / 4.0 + 1
    res = res.to_i
    puts res
end