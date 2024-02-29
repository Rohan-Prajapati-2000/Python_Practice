# write a program to take input from user & check it is alphabet or not , if it's alptabet then check it is in uppercase or lowercase agter that convert in another state.

n=input("Enter any string: ")
if n.isalpha():
    if n.isupper():
        print("It is in upparcase")
        print(n.lower())
        print(n.casefold())

    elif n.islower():
        print("It is in lowercase")
        print(n.upper())
    
    else:
        print("Wrong  Input")   # agar upper and lower dono case me string h to Wrong input
else:
    print("It is not a valid string")