# https://codeforces.com/problemset/problem/2082/A
# 800 elo

t = gets.to_i
results = []
t.times do
    res_row = 0
    res_col = 0
    n, m = gets.split.map(&:to_i)
    
    # only_one_n = (n==1) ? true : false
    # only_one_m = (m==1) ? true : false
    # n * m size of matrix
    matrix = Array.new(n) {Array.new(m,0)}
    (0...n).each do |i| # data collection
        # matrix[i] = gets.lines.map {|line| line.strip.chars.map(&:to_i)}
        matrix[i] = gets.strip.chars.map(&:to_i)
    end
    # what is xor again
    # for each line
    # if !only_one_n
        matrix.each_with_index do |row,i|
            # puts "Row #{i}: #{row.inspect}"
            xor = row.inject(0) { |acc, bit| acc ^ bit } # add all the xor bits
            res_row += 1 if xor ==1
        end
    # end

    # if !only_one_m
        (0...m).each do |i|
            xor = 0
            matrix.each do |row|
                xor ^= row[i]
            end
            res_col += 1 if xor==1
        end
    # end

    res = [res_row, res_col].max
    results << res

    
end
    
results.each { |skibidi| puts skibidi }