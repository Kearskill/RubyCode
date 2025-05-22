# https://codeforces.com/problemset/problem/231/A
# 800 elo

n = gets.to_i
ans = 0
n.times do
    number = gets.chomp.split

    if number[0].to_i + number[1].to_i + number[2].to_i > 1
        ans+=1
    end
end

puts ans