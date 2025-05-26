def count(arr):
    results = []
    for e in arr:
        res = 0
        arr = []
        for val in e:
            arr.append(val)
            for x in arr:
                if sum(arr) - x == x:
                    res += 1
        results.append(res)
    return results

# Read number of test cases
t = int(input())

# Read all test cases
arr = []
for _ in range(t):
    n = int(input())
    e = list(map(int, input().split()))
    arr.append(e)

# Run the function
outputs = count(arr)

# Print results
for out in outputs:
    print(out)
