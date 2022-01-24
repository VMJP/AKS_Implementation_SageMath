def Step5(n,r):
    R.<x> = IntegerModRing(n)[]
    S.<xbar> = QuotientRing(R, R.ideal(x^r - 1))
    for a in range(1, floor(sqrt(euler_phi(r)) * log(n,2)) + 1):
        f = (x + a)^n
        f = S(f)
        if (f != x^n + a):
            return false
    else:
        return true
