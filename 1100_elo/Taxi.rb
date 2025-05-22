# https://codeforces.com/problemset/problem/158/B
# 1100 elo

t = gets.to_i
# counter = 0
arr = gets.chomp.split.map(&:to_i).sort

freq = Hash.new(0)

arr.each do |c|
    freq[c] += 1
end

counter = freq[4].to_i
# puts freq
# puts freq[0] # not used
# puts freq[1] # 1
# puts freq[2] # 2
# puts freq[3] # 3
# puts freq[4] # 4 

if (freq[1] - freq[3]).abs >0 # groups 1 and 3
    skibidi = (freq[1] - freq[3]).abs
    bigger = freq[1]>=freq[3] ? freq[1] : freq[3]
    remainder = (bigger - skibidi).abs
    counter += remainder
    freq[1] = (freq[1] - remainder).abs
    freq[3] = (freq[3] - remainder).abs # the remainder of group 3 can just use a car
    counter += freq[3]
elsif (freq[1] - freq[3]) == 0
    counter += freq[1]
    freq[1] = 0
    freq[3] = 0 
end
# what left is group 1 and group 2

# groups 2 
if freq[2] % 2 == 0 # if even
    counter += freq[2] / 2
    freq[2] = 0
else # if odd 
    counter += (freq[2] / 2).to_i
    freq[2] = 1
end


# garbage collect freq[2] pls
# groups 1
if freq[1] % 4 == 0 # if enoguh to group the lonelies
    counter += freq[1] / 4
    freq[1] = 0
    if freq[2] == 1
        counter+=1
    end
else
    counter += freq[1] /4 
    freq[1] %= 4
    if freq[2] ==1 && freq[1] <= 2
        freq[2] = 0
        counter +=1 # groups the single 2 and 1 1 
    end
end

puts counter

# group 4 takes the same taxi
counter = freq[4].to_i

# group 3 and 1 choose as much as possible
if (freq[3] - freq[1]).abs > 0
    bigger = freq[1] >= freq[3] ? freq[1] : freq[3]
    counter += bigger - (freq[3] - freq[1]).abs 
    freq[3] -= (freq[3] - freq[1]).abs # the remainder of 3
    freq[1] -= (freq[3] - freq[1]).abs
else # if both group 3 and 1 is the same number
    counter += freq[3].to_i
    freq[1] = 0 
    freq[3] = 0
end

# let group 2 combine with themselves

if freq[2] % 2 == 0 # if even
    counter += freq[2].to_i /2 
    freq[2] = 0
else 
    counter += freq[2].to_i /2
    freq[2] = 1
end

# if there is more than 1s and 2s
if freq[1] >= 2 && freq[2] ==1 
    counter += 1
    freq[1] -= 1
    freq[2] = 0
end

if freq[2] == 1 && freq[1]<2
    counter +=1
    freq[2] = 0
    freq[1] = 0
end



# arr = t.times.map { gets.to_i }.sort.reverse
# used = Array.new(t, false)
# # arr = Array.new(t)

# # t.times do |i|
# #     arr[i] = gets.to_i
# # end

# # arr = arr.sort.reverse
# i = 0
# n = arr.length

# while i < n
#   # Skip used elements
#   if used[i]
#     i += 1
#     next
#   end

#   sum = arr[i]
#   used[i] = true

#   if sum < 4
#     # Try adding next element
#     if i + 1 < n && !used[i + 1] && (sum += arr[i+1]) <=4
#       sum += arr[i + 1]
#       used[i + 1] = true
#     end


#     # Try adding the next-next element if still under 4
#     if sum < 4 && i + 2 < n && !used[i + 2] && (sum += arr[i+2]) <=4
#       sum += arr[i + 2]
#       used[i + 2] = true
#     end

#     # Try adding the next-next element if still under 4
#     if sum < 4 && i + 3 < n && !used[i + 3] && (sum += arr[i+3]) <=4
#       sum += arr[i + 3]
#       used[i + 3] = true
#     end

#     # Try adding the next-next element if still under 4
#     if sum < 4 && i + 4 < n && !used[i + 4] && (sum += arr[i+4]) <=4
#       sum += arr[i + 4]
#       used[i + 4] = true
#     end
#   end

#     counter += 1

#   i += 1
# end

# puts counter

# counterpart  = 4 - myArr[i]
# n.times do |i|
#     if arr[i] == counterpart
#         raise the counter chat
#         mark the array[i] as used
#         next
#     elsif 

# if counterpart is equal
#     goooood
#     raise the counter chat
#     mark the array as used
# else

# end
