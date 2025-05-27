# https://codeforces.com/problemset/problem/2094/A
# 800 elo
def skibidiiiiii
    str = gets.split
    res = ""
    str.each do |word|
        res += word[0]
    end
    puts res
end


t = gets.to_i

t.times { skibidiiiiii }