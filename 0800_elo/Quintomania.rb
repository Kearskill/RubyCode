# https://codeforces.com/problemset/problem/2036/A
# 800 elo

n = gets.to_i

n.times do
    a = gets.to_i
    notes = gets.chomp.split.map(&:to_i)

    pass = notes.each_cons(2).all? do |a, b|
        diff = (a - b).abs
        diff == 7 || diff == 5
    end

    puts pass ? 'YES' : 'NO'
end
