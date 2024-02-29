n= int(input("Enter Any Number: "))
for r in range (1,6):
    for c in range(1,r+1):
        print("*",end="")
    print()

for r in range (1,6):
    for c in range (5,r-1,-1):
        print("*", end="")
    print()

for r in range(1,6):
    for s in range(4,r-1,-1):
        print(" ",end="")
    for c in range(1,r+1):
        print("*", end="")
    print()

for r in range (1,6):
    for s in range (2,r+1):
        print(" ",end="")
    for c in range (5,r-1,-1):
        print("*", end="")
    print()

for r in range(1,n):
    for c in range (n-1,r-1,-1):
        print("*",end="")
    for s in range (2,r+1):
        print(" ",end="")
    print()
for r in range(2,n):
    for c in range(1,r+1):
        print("*",end="")
    print()
print()

for r in range(1,n):
    for s in range(1,r+1):
        print(" ", end="")
    for c in range(n-1,r-1,-1):
        print("*",end="")
    print()
for r in range(2,n):
    for s in range(n-1,r-1,-1):
        print(" ", end="")
    for c in range(1,r+1):
        print("*", end="")
    print()

n=int(input("Enter Your Number: "))
for r in range (1,n):
    for s in range (2,r+1):
        print(" ",end="")
    for c in range(n-1,r-1,-1):
        print("*",end="")
    print()
for r in range(2,n+1):
    for s in range(1,n-1):
        print(" ",end="")
    for c in range(1,r+1):
        print("*",end="")

    print()


