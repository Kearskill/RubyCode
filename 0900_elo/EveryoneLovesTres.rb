# https://codeforces.com/problemset/problem/2035/B
# 900 elo

def smallest_tres_number(n)
    return -1 if n<1

    queue = ["3", "6"]

    until queue.empty?
        current = queue.shift
        return current if current.length ==n && current.to_i % 66 == 0
        next if current.length >= n
        queue.push(current + "3")
        queue.push(current + "6")
    end
    -1
end

def solve_case(n)
    return -1 if n<1 || n==1 || n == 3
    from = {}
    queue = []

    queue << ["",0,0]

    while !queue.empty?
        str, mod, len = queue.shift
        next if len > n
        if len == n && mod == 0
            return str
        end

        ["3","6"].each do |digit|
            next_str = str + digit
            next_len = len + 1
            next_mod = (mod * 10 + digit.to_i) % 66

            key = [next_mod, next_len]
            unless from[key]
                from[key] = true
                queue << [next_str,next_mod,next_len]
            end
        end
    end
end

def tuto_answer(n)
    return -1 if n<2 || n == 3

    if n.even?
        n -= 2
        str = '3' * n + '66'
    else # odd 
        n -= 5
        str = '3' * n + '36366'
    end
    return str.to_i
end


t = gets.to_i

t.times do
    n = gets.to_i
    puts tuto_answer(n)
end