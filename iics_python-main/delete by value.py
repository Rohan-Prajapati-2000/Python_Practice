li=[]
size=int(input("Enter Total no of values ?"))
for j in range(0,size):
	li.append(int(input("Enter Value")))
print(li)
cnt=0
choice=int(input("Enter Delete value"))
for i in li:
	if i==choice:
		cnt=cnt+1
		li.remove(choice)
	else:
		cnt
if cnt>0:
	print("Match Found")
else:
	print("Not Found")
print(li)