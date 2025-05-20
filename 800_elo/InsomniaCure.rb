# https://codeforces.com/problemset/problem/148/A
# 800 elo

# Every k-th dragon got punched in the face with a frying pan. 
# Every l-th dragon got his tail shut into the balcony door. 
# Every m-th dragon got his paws trampled with sharp heels. 
# Finally, she threatened every n-th dragon to call her mom, and he withdrew in panic.

k = gets.to_i # punched
l = gets.to_i # tail shutted off
m = gets.to_i # paws trampled
n = gets.to_i # call their mum
d = gets.to_i # total number of dragons

number_of_unfortunate_dragon = (1..d).count do |i| 
    i % k == 0 || i % l == 0 || i % m == 0 || i % n == 0
end

puts number_of_unfortunate_dragon

