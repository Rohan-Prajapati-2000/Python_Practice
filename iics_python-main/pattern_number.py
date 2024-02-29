for r in range(1,6):
    for s in range(4,r-1,-1):
        print("-",end="")
    for c in range(r,r+1):
        print(c,end="")
    print()