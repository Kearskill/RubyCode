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

if (freq[1] - freq[3]).abs >0


a = 5
b = 4

if (a - b).abs > 0
    skibidi = (a - b).abs # 1
    remainder = (a - skibidi).abs # 4
    counter += remainder
    a = (a - remainder).abs # 1
    b = (b - remainder).abs # 0
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
