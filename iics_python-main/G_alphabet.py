for r in range(1,9):
    for c in range(1,10):
        if r==1 or c==1 or c==6 and (r!=3 and r!=4 and r!=2) or r==8 and (c!=7 and c!=8) or r==5 and (c!=2 and c!=3) or c==9 and (r!=2 and r!=3 and r!=4) :
            print("*", end="")
        else:
            print(" ", end="")
    print()
print()
print()

for r in range(1,10):
	for c in range(1,11):
		if c==1 or r==1 or r==9 and c<6 or c==5 and r>5 or r==6 and c>4 or c==10 and r>5:
			print("*",end="")
		else:
			print(end=" ")
	print()
print()
print()

for r in range(1,10):
	for c in range(1,11):
		if c==1 and r>1 and r<9 or r==1 and c>1 or r==9 and c<6 and c>1 or c==5 and r>5 or r==6 and c>4 or c==10 and r>5:
			print("*",end="")
		else:
			print(end=" ")
	print()
print()
print()

for r in range(1,9):
	for c in range(1,7):
		if c==1 and r>1 and r<8 or r==1 and c>1 or r==8 and c>1 and c<5 or c==6 and r>4 and r<8 or r==5 and c>3:
			print("*",end="")
		else:
			print(end=" ")
	print()
print()
print()

for r in range(1,8):
	for c in range(1,15):
		if c==1 and (r!=1 and r!=2 and r!=6 and r!=7) or r==1 and (c!=1 and c!=2 and c!=3 and c!=10 and c!=11 and c!=12 and c!=13 and c!=14 and c!=15) or c==2 and (r!=1 and r!=3 and r!=4 and r!=5 and r!=7) or r==7 and (c!=1 and c!=2 and c!=3 and c!=8 and c!=9 and c!=10 and c!=11 and c!=12 and c!=13 and c!=14 and c!=15) or c==9 and(r!=1 and r!=2 and r!=3 and r!=7) or r==4 and() or r==4 and (c!=2 and c!=3 and c!=4 and c!=13 and c!=14) or c==12 and (r!=1 and r!=2 and r!=3):
			print("*",end="")
		else:
			print(end=" ")
	print()
print()
print()

