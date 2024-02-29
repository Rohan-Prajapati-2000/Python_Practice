n=int(input("Enter Your Number: "))
count=0
for i in range(2,n):
    if(n%i==0):
        count+=1
        print(i,end=",")

    else:
        count

if count>=1:
    print("This is Not a Prime Number.")
else:
    print("This is a Prime Number.")

