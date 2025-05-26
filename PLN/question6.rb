# F: Fly me to the moon

#  exactly k
#  adjacent pods for a successful launch

def solve(n,m,k,h)
    if n == m * k # all accounted for
        return 0
    end

    if n < m * k # everything done
        return -1
    end

    if h.sum == 0
        return 0
    end

    # the rest of this is basically when n> m * k

    (1..(m*k)).each do # how much can i get
        h.pop
    end

    
    maximum_number = h[h.length-1] - 1 
    maximum_number
end


t = gets.to_i # the number of test cases
results = []

t.times do
    # n is the number of evacuation pods
    # m is the number of rockers
    # k is the number of adjacent pods required per rocket
    n, m, k = gets.split.map(&:to_i) 

    # h is the number of hours remaining before the i-th pod is affected by radiation
    h = gets.split.map(&:to_i)

    h = h.sort

    maximum_number = solve(n,m,k,h)
     
    results << maximum_number;
end

results.each { |r| puts r}