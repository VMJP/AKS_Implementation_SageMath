def AKS(n):
    # Additional Step 0
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

    return Step5(n,r)
