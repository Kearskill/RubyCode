# https://codeforces.com/problemset/problem/2065/B
# 800 elo
def skibidiiiiii
    str = gets.chomp
    (1...str.size).each do |i|
        if str[i] == str[i-1]
            puts 1
            return
        end
    end
    puts str.size
end

t = gets.to_i

t.times { skibidiiiiii }