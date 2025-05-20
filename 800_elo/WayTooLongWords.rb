# https://codeforces.com/problemset/problem/71/A
# 800 elo

def simplify(word) # only use for length more than 10
    first_letter = word[0]
    last_letter = word[word.length-1]
    length = word.length - 2
    return first_letter + length.to_s + last_letter
end


n = gets.to_i

n.times do
    temp = gets.chomp
    if temp.length >10
        puts simplify(temp)
    else
        puts temp
    end
end

