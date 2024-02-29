# CONNECTING TO MYSQL SERVER
import mysql.connector as a
connector = a.connect(host="localhost", user="root", password="", database="mypersonalbank")


# FUNCTION FOR OPEN NEW ACCOUNT
def OpenAccount():
    try:
        accNo = int(input("Enter Your Account Number: "))
        name = input("Enter Your Name: ")
        phone = input("Enter Your Contact Number: ")
        dob = input("Enter Your Date Of Birth (dd/mm/yyyy): ")
        address = input("Enter Your Address: ")
        opening_balance = int(input("Enter Opening Amount: "))
        data1 = (accNo, name, phone, dob, address, opening_balance)
        data2 = (accNo, name, opening_balance)
        sql_account = 'insert into account values(%s, %s, %s, %s, %s, %s)'
        sql_amount = 'insert into amount values(%s, %s, %s)'
        exe_cursor = connector.cursor()
        exe_cursor.execute(sql_account, data1)
        exe_cursor.execute(sql_amount, data2)
        connector.commit()
        print("Account Opened Successfully ✅")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()


# FUNCTION FOR DEPOSIT AMOUNT
def DepositAmnt():
    try:
        accNo = input("Enter Account No: ")
        amount = int(input("Enter Your Amount: "))
        a = 'select balance from amount where ac_no = %s'
        data = (accNo,)
        exe_cursor = connector.cursor()
        exe_cursor.execute(a, data)
        myResult = exe_cursor.fetchone()
        total_amount = myResult[0] + amount
        sql = "update amount set balance = %s where ac_no = %s"
        d = (total_amount, accNo)
        exe_cursor.execute(sql, d)
        connector.commit()
        print("Amount Deposited Successfully ✅")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()


# FUNCTION FOR WITHDRAW AMOUNNT
def WithdrawAmnt():
    try:
        accNo = input("Enter Account No: ")
        amount = int(input("Enter Your Amount: "))
        a = 'select balance from amount where ac_no = %s'
        data = (accNo,)
        exe_cursor = connector.cursor()
        exe_cursor.execute(a, data)
        myResult = exe_cursor.fetchone()
        total_amount = myResult[0] - amount
        sql = "update amount set balance = %s where ac_no = %s"
        d = (total_amount, accNo)
        exe_cursor.execute(sql, d)
        connector.commit()
        print("Amount Withdrwal Successfully ✅")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()


# FUNCTION FOR CHECK BALANCE
def CheckBalance():
    try:
        accNo = int(input("Enter Your Account Number: "))
        a = "select balance from amount where ac_no = %s"
        data = (accNo,)
        exe_curser = connector.cursor()
        try:
            exe_curser.execute(a, data)
            myAmount = exe_curser.fetchone()
            if myAmount:
                print("Balance Of Account Number: ", accNo, " Is: ",myAmount[0])
            else:
                print(f"Account Number {accNo} Is Not Found")
        except Exception as e:
            print("Please Enter Correct Account Number!!!")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()

# FUNCTION FOR SHOWING CUSTOMER DETAILS
def CustomerDetail():
    try:
        accNo = int(input("Enter Your Account Number: "))
        a = "select * from account where ac_no = %s"
        data = (accNo,)
        exe_curser = connector.cursor()
        exe_curser.execute(a, data)
        userDetails = exe_curser.fetchone()
        for i in userDetails:
            print(i, end=", ")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()


# FUNCTION FOR CLOSE ACCOUNT
def CloseAccount():
    try:
        accNo = int(input("Enter Your Account Number: "))
        query1 = "delete from account where ac_no = %s"
        query2 = "delete from amount where ac_no = %s"
        data = (accNo,)
        exe_curser = connector.cursor()
        exe_curser.execute(query1, data)
        exe_curser.execute(query2, data)
        connector.commit()
        print("Account Closed Successfully ✅")
    except Exception as e:
        print(f"An error occurred: {e} ❎")
    main()




def main():
    print('''
**********************************************
*     PRESS 1 FOR OPENING NEW ACCOUNT        *
*     PRESS 2 FOR DEPOSIT AMOUNT             *
*     PRESS 3 FOR WITHDRAW AMOUNT            *
*     PRESS 4 FOR BALANCE ENQUIRY            *
*     PRESS 5 FOR DISPLAY CUSTOMER DETAILS   *
*     PRESS 6 FOR CLOSE AN ACCOUNT           *
********************************************** 
          ''')
    
        #   TAKING USER INPUT
    userInput = int(input("Enter Your Choice: "))

    if(userInput==1):
        OpenAccount()
    elif(userInput==2):
        DepositAmnt()
    elif(userInput==3):
        WithdrawAmnt()
    elif(userInput==4):
        CheckBalance()
    elif(userInput==5):
        CustomerDetail()
    elif(userInput==6):
        CloseAccount()
    else:
        print("Please Enter A Valid Number ❎")


# This is main function
main()