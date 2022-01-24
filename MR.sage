def MR(n):
    k = ceil(log(n,2))
    t = floor(n/2)
    s = 1
    while (2^s * t == n - 1):
        s = s + 1
        t = floor(n/2^s)
        
    s = s - 1
    t = floor(n/2^s)
    b = floor(n/k)
    a = 0
    for i in range (1, k):
        a = a + b
        if (a >= n - 2):
            return true
        if (gcd(a,n) > 1):
            return false
        
        test1 = a^t % n
        test2 = [a^(2^e * t) % n for e in range(1,s)]
        if ((test1 == 1) | (test1 == n - 1) | (-1 in test2) | (n - 1 in test2)):
            continue
        else:
            return false
        
    return true
