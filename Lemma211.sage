def Lemma211(n):
    R.<x> = IntegerModRing(n)[]
    a = 0
    # Find a coprime to n
    for i in range(2, n):
        if (gcd(n,i) == 1):
            a = i
            break
            
    f = (x + a)^n
    if (f == x^n + a):
        return true
    else:
        return false
