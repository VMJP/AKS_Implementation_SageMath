def Step1(n):
    # Check whether n is a square
    if (n % 3 == 1):
        l = ceil(log(n,3)/2)
        g = PAdicNewtonIteration(3,l,1,-1,2,n)
        if ((g^2 == n) | ((3^l - g)^2 == n)):
            return true

    # Check whether n is an odd power
    if (n % 2 == 1):
        k = 3
        while (4^k < n):
            s = xgcd(k,2)[1]
            l = 1
            while (2^(k * l) <= n):
                l = l + 1
            g = PAdicNewtonIteration(2,l,1,s,k,n)
            if (g^k == n):
                return true
            else:
                k = k + 2

    return false

def PAdicNewtonIteration(p,l,g,s,e,n):
    # The function f is given through g^e - n
    # The function f' is given through e * (g^(e - 1))
    r = ceil(log(l,2))
    for i in range(1,r):
        g = (g - ((g^e - n) * s)) % (p^(2^i))
        s = (2 * s - (e * (g^(e - 1)) * s^2)) % (p^(2^i))

    g = (g - ((g^e - n) * s)) % (p^l)

    return g
