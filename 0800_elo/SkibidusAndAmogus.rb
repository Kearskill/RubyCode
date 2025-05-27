# https://codeforces.com/contest/2065/problem/A
# 800 elo

def check(str)
    str[-2] == 'u' && str[-1] == 's'
end

t = gets.to_i
results = []
t.times do 
    str = gets.chomp
    if check(str)
        str = str[0...-2] + "i"
    end
    results << str
end
results.each { |sigma| puts sigma }