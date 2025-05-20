# https://codeforces.com/problemset/problem/4/A
# 800 elo 

n = gets.to_i

if n >2 
    if n.even?
        puts 'YES'
    else 
        puts 'NO'
    end
else
    puts 'NO'
end