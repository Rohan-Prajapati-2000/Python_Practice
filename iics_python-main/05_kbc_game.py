score=0
print(" --------------------------------------")
print("|           WELCOME KBC GAME           |")
print(" --------------------------------------")
name=input("Enter Your Name In Game: ")
print("Welcome", name)
print("Q.1 Where is Taj Mahal")
print("(A) Mumbai               (B) Agra")
print("(C) Punjab               (D) Delhi")
q1=input("Enter Your Answer: ")

if q1=='b' or q1=='B':
    print("Right Answer")
    score=score+5
    print("Current Score:",score)

    print("Q2. Where is Red Fort?")
    print("(A) Mumbai               (B) Agra")
    print("(C) Punjab               (D) Delhi")
    q2=input("Enter Your Answer: ")
    if q2=='d' or q2=='D':
        print("Right Answer")
        score=score+5
        print("Current Score:",score)

        print("Q3. Where is Khatu Shyam?")
        print("(A) Jaipur               (B) Agra")
        print("(C) Punjab               (D) Delhi")
        q3=input("Enter Your Answer: ")
        if q3=='a' or q3=='A':
            print("Right Answer")
            score=score+5
            print("Current Score:",score)

            print("Q4. Where is Qutub Minar?")
            print("(A) Jaipur               (B) Agra")
            print("(C) Punjab               (D) Delhi")
            q4=input("Enter Your Answer: ")
            if q4=='d' or q4=='D':
                print("Right Answer")
                score=score+5
                print("Current Score:",score)

                print("Q5. Where is Burj Khalifa?")
                print("(A) India               (B) Astralia")
                print("(C) Dubai               (D) London")
                q5=input("Enter Your Answer: ")
                if q5=='c' or q5=='C':
                    print("Right Answer")
                    score=score+5
                    print("Current Score:",score)

                    print("Q6. How many colors in ranbow?")
                    print("(A) 3               (B) 5")
                    print("(C) 7               (D) 9")
                    q6=input("Enter Your Answer: ")
                    if q6=='c' or q6=='C':
                        print("Right Answer")
                        score=score+5
                        print("Current Score:",score)
                        print("Congrats!!! you won this game")
                    else:
                        print("Opps!! Wrong Answer......")
                        print("Game Over", name)
                        print("Current Score:",score)
                else:
                    print("Opps!! Wrong Answer......")
                    print("Game Over", name)
                    print("Current Score:",score)
            else:
                print("Opps!! Wrong Answer......")
                print("Game Over", name)
                print("Current Score:",score)
        else:
            print("Opps!! Wrong Answer......")
            print("Game Over", name)
            print("Current Score:",score)
    else:
        print("Opps!! Wrong Answer......")
        print("Game Over", name)
        print("Current Score:",score)    
else:
    print("Opps!! Wrong Answer......")
    print("Game Over", name)
    print("Current Score:",score)
    print("Your High Score is:",score)
if score == 30:
    print("Congratulations You Won 7 Crore")
else:
    print("Better Luck Next Time")