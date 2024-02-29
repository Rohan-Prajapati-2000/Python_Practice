r=int(input("Enter Row Number: "))
c=int(input("Enter Column Number: "))
for r in range(1,r+1):
    for c in range(1,r+1):
        print("* ", end="")
    print()