import tkinter as T
screen=T.Tk()
screen.geometry("1920x1080")
screen.title('Login')
screen.configure(bg='#566573')

box=T.StringVar() # It will collect the name of Student
box2=T.StringVar() # it will collect the Contact name of that Student

def collect():
    txt=box.get()
    txt2=box2.get()
    print("Student Name:", txt)
    print("Contact Number:", txt2)
    box.set("") # It will clear after collecting data
    box2.set("")    # It will clear after collecting data

heading=T.Label(
    text='Admission Form',
    font=('Arial',30,'bold'),
    width=13,
    bg='#566573',
    fg='white'
)
heading.place(x=580,y=290)

Student_Name=T.Label(
    text='Student Name:',
    fg='white',
    bg='#566573',
    width=15,
    font=('Arial', 10, 'bold')
)
Student_Name.place(x=580,y=350)

Entry_Student=T.Entry(
    font=('Arial',10, "bold"),
    width=25,
    textvariable=box # In this store the name of Student
)
Entry_Student.place(x=720, y=350)

Contact_Number=T.Label(
    text='Contact Number:',
    font=('Arial',10,'bold'),
    width=15,
    fg='white',
    bg='#566573'
)
Contact_Number.place(x=580,y=380)

Entry_Contact=T.Entry(
    font=("Arial",10,"bold"),
    width=25,
    textvariable=box2
)
Entry_Contact.place(x=720,y=380)

Btn=T.Button(
    text='Login',
    font=('Trade Gothic Inline', 13, 'bold'),
    bg='green',
    fg='white',
    relief='sunken',
    command=collect
)

Btn.place(x=680,y=420)








screen.mainloop()