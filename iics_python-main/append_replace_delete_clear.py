list1=[10,20,30,40]
print('''
************************************
*      WELCOME TO LIST MODULE      *
************************************
''')
print(list1)

print('''
********************************************
||          PRESS E FOR EXTEND            ||
||          PRESS R FOR REPLACE           ||
||          PRESS D FOR DELETE            ||
||          PRESS C FOR CLEAR             ||
********************************************
''')

task=input("Enter Your Choice: ")
if task=='e' or task=='E':
    print("Extend is selected!!!")
    # list2=[]  # isse nested list ban jayega
    size=int(input("Enter your number for list's value:"))
    for i in range(0,size):
        # list2.append(int(input("Enter Your Value: ")))  # isse nested list ban jayega
        list1.append(int(input("Enter Your Value: ")))
    # list1.append(list2)   # isse nested list ban jayega
    print(list1)

elif task=='r' or task=="R":
    print("Relace i Selected")
    search=int(input("Enter Your Number For Search: "))
    for i in range(0,len(list1)):
        if list1[i]==search:
            replace=int(input("Enter Your Word For Replace: "))
            list1[i]=replace
    print(list1)

elif task=='d' or task=='D':
    print("Delete is Selected!!!")
    print()
    print("Press V for Delete by Value")
    print("Press I for Delete by Index")
    select=input("Enter Your Choice: ")
    if select=='v' or select=='V':
        print("Delete By Value Is Selected!!!")
        delete=int(input("Enter Your Number to Search: "))
        list1.remove(delete)
            
    print(list1)