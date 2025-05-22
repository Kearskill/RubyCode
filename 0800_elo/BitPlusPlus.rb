# https://codeforces.com/problemset/problem/282/A
# 800 elo

n = gets.to_i # number of lines
x = 0
n.times do
    temp = gets.chomp
    if temp.include? '++'
        x += 1
    elsif temp.include? '--'
        x -= 1
    else
        puts 'Dawg what do you want me to do?'
    end
end
puts x