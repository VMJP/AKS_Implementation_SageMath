def Step2(n):
    for r in range(3, ceil(log(n,2)^5) + 1):
        # Note the <for>-<else> conditional 
        for k in range(1, floor(log(n,2)^2) + 1): 
            if (n^k % r == 1):
                break
        else:
            return r
