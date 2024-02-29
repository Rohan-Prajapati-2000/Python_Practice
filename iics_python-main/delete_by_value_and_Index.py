marks=[40,60,50,60,70,80,90,60]
print(marks)
c=len(marks)
print(c)
v=int(input("Enter your value which you want to remove: "))
for i in range(0,c):
    if marks[i]==v:
        marks[i]=marks.remove(v)
    else:
        marks    # remove first 60 from the list by using remove by value
print(marks)

# marks.remove(marks[0]) # remove 0 index Number from the list using remove by Index Number
# print(marks)
