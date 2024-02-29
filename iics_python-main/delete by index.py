li=[]
size=int(input("Enter Total no of values ?"))
for j in range(0,size):
	li.append(int(input("Enter Value")))
print(li)
cnt=0
choice=int(input("Enter value index no"))
del li[choice]
print(li)