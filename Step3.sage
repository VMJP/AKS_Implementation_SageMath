def Step3(n,r):
    for a in range(2, r + 1):
        if ((gcd(a,n) > 1) & (gcd(a,n) < n)):
            return true
    return false
