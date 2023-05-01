import customtkinter 
customtkinter.set_appearance_mode("dark") 
customtkinter.set_default_color_theme("dark-blue")

root = customtkinter.CTk()

import sqlite3
# connect to the database file
conn = sqlite3.connect('employee1.db')

# create a cursor object
cur = conn.cursor()

# execute SQL command to create the table
cur.execute('''CREATE TABLE Employee (EmployeeID INTEGER  first_name TEXT, last_name TEXT, dob TEXT, gender TEXT, phone TEXT, email TEXT, hire_date TEXT, salary REAL, department_id INTEGER, PRIMARY KEY,('EmployeeID'));''')

# commit the changes
conn.commit()

# close the cursor and connection
cur.close()
conn.close()


# connect to the database


class MainWindow:
    def __init__(self, master):
        self.master = master
        root.title("Employee Database App")
        root.geometry("500x500")
        
        # create buttons for the CRUD operations
        self.create_button = customtkinter.CTkButton(master, text="Create")
        self.read_button = customtkinter.CTkButton(master, text="Read")
        self.update_button = customtkinter.CTkButton(master, text="Update")
        self.delete_button = customtkinter.CTkButton(master, text="Delete")

        # create input fields for employee data
        self.employee_id = customtkinter.CTkEntry(master)
        self.first_name = customtkinter.CTkEntry(master)
        self.last_name = customtkinter.CTkEntry(master)
        self.dob = customtkinter.CTkEntry(master)
        self.gender = customtkinter.CTkEntry(master)
        self.phone = customtkinter.CTkEntry(master)
        self.email = customtkinter.CTkEntry(master)
        self.hire_date = customtkinter.CTkEntry(master)
        self.salary = customtkinter.CTkEntry(master)
        self.department_id = customtkinter.CTkEntry(master)

        # create labels for employee data input fields

        self.employee_id_label = customtkinter.CTkLabel(master, text="Employee ID")
        self.first_name_label = customtkinter.CTkLabel(master, text="First Name")
        self.last_name_label = customtkinter.CTkLabel(master, text="Last Name")
        self.dob_label = customtkinter.CTkLabel(master, text="Date of Birth")
        self.gender_label = customtkinter.CTkLabel(master, text="Gender")
        self.phone_label = customtkinter.CTkLabel(master, text="Phone")
        self.email_label = customtkinter.CTkLabel(master, text="Email")
        self.hire_date_label = customtkinter.CTkLabel(master, text="Hire Date")
        self.salary_label = customtkinter.CTkLabel(master, text="Salary")
        self.department_id_label = customtkinter.CTkLabel(master, text="Department ID")


        # add the UI elements to the layout
        self.create_button.grid(row=0, column=0)
        self.read_button.grid(row=0, column=1)
        self.update_button.grid(row=0, column=2)
        self.delete_button.grid(row=0, column=3)
        self.employee_id_label.grid(row=1, column=0)
        self.employee_id.grid(row=1, column=1)
        self.first_name_label.grid(row=2, column=0)
        self.first_name.grid(row=2, column=1)
        self.last_name_label.grid(row=3, column=0)
        self.last_name.grid(row=3, column=1)
        self.dob_label.grid(row=4, column=0)
        self.dob.grid(row=4, column=1)
        self.gender_label.grid(row=5, column=0)
        self.gender.grid(row=5, column=1)
        self.phone_label.grid(row=6, column=0)
        self.phone.grid(row=6, column=1)
        self.email_label.grid(row=7, column=0)
        self.email.grid(row=7, column=1)
        self.hire_date_label.grid(row=8, column=0)
        self.hire_date.grid(row=8, column=1)
        self.salary_label.grid(row=9, column=0)
        self.salary.grid(row=9, column=1)
        self.department_id_label.grid(row=10, column=0)
        self.department_id.grid(row=10, column=1)

my_gui = MainWindow(root)
root.mainloop()