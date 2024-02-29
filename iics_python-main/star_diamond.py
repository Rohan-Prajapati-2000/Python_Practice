n=int(input("Enter Your Number: "))
for r in range(1,n+1):
    for s in range(n,r-1,-1):
        print(" ",end="")
    for c in range(1,r+1):
        print("* ",end="")
    print()
for r in range(1,n):
    for s in range(0,r+1):
        print(" ",end="")
    for c in range(n-1,r-1,-1):
        print("* ",end="")
    print()