# https://codeforces.com/problemset/problem/2104/B
# 1000 elo

t = gets.to_i
t.times do
    n = gets.to_i
    a = gets.split.map(&:to_i)

    pmax = Array.new(n + 1, 0)
    psum = Array.new(n + 1, 0)

    (0...n).each do |j|
        pmax[j + 1] = [pmax[j], a[j]].max
        psum[j + 1] = psum[j] + a[j]
    end

    result = []
    (1..n).each do |k|
        max_val = pmax[n - k + 1]
        sum_last_k = psum[n] - psum[n - k + 1]
        result << (max_val + sum_last_k)
    end
puts result.join(" ")
end


