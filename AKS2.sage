# AKS variant as specified in Chapter 3 Section 3
def AKS2(n):
    if ((n == 2) | (n == 3)):
        return true
    if ((n % 2 == 0) | (n % 3 == 0)):
        return false

    if (Step1(n)):
        return false

    r = Step2(n)

    if (Step3(n,r)):
        return false
    
    # Step 4
    if (n <= r):        
        return true

    R = IntegerModRing(n)
    k = -(n + 1) % r
    if (k < 0):
        k = k + r

    for a in range(1, floor(sqrt(euler_phi(r)) * log(n,2)) + 1):
        f = [R(0) for e in range(0,n + r)]
        f[r-1] = R(1)
        
        for m in range(0,n):
            f[m + r] = (a^r + 1) * f[m]
            for j in range(1, r):
                f[m + r] = f[m + r] + binomial(r,j) * (-1)^j * a^(r - j) * f[m + j]
        
        for j in range(0,r):
            if (f[n + j] != binomial(j,k) * a^(j - k) + a * f[j]):
                return false
    return true
