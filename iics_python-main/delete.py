li=["Amit", "Namit", "Sumit", "Karan", "Vikas", "Amit"]
# search="Amit"
# names.remove(search)
# print(names)
print(li)

search=input("Enter Your string you want to search: ")
for i in li:
    if i==search:
        li.remove(search)
    else:
        pass
print(li)

