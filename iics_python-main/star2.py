n=int(input("Enter Your Number: "))
for r in range(1,n+1):
    for c in range(n+1,r-1,-1):
        print("* ", end="")
    print()
