
#-----------------------------------------------------------------------QUIZ MASTER PROGRAM STARTS FROM HERE---------------------------------------------------------------#
from tabulate import tabulate
import mysql.connector as c
con = c.connect(host="localhost", user="root",passwd="radhi",database="quiz")
cursor = con.cursor()

label = "WELCOME TO THE QUIZ MASTER"
x = label.center(150)
print(x)
for choice in range(5):
    print('\n1. CREATE AN ACCOUNT')
    print('\n2. LOGIN PANEL')
    print('\n3. PLAY QUIZ')
    print('\n4. VIEW LEADERBAORD')
    print('\n5. LOGOUT PANEL')
    choice = input("\nENTER YOUR CHOICE: ")
    
#---------------------------------------------------------------------ACCOUNT CREATION FOR NEW PLAYER STARTS FROM HERE------------------------------------------------------#
    
    if choice == "1":
        rg_label = "ACCOUNT CREATION PANEL"
        r = rg_label.center(150)
        print(r, "\n")
        username = input("Create your username:")
        password = input("Create your password:")
        a_query = "INSERT INTO quiz_rcd (username, pwd) VALUES (%s, %s)"
        cursor.execute(a_query, (username, password))
        con.commit()
        print("Account Created Successfully!")
        
#--------------------------------------------------------------------PLAYER LOGIN STARTS FROM HERE--------------------------------------------------------------------------#        

    elif choice == "2":
        p_label = "PLAYER LOGIN"
        p = p_label.center(150)
        print(p, "\n")
        user = input("Enter your username:")
        pwd = input("Enter your password:")
        l_query = "select * from quiz_rcd"
        cursor.execute(l_query)
        lc = cursor.fetchall()
        for a in lc:
            p_user = a[1]
            p_pwd = a[2]
        if (user == a[1]) and (pwd == a[2]):
            print("Successfully Logined!")
        else:
            print("Login doesn't match!!")
            
#---------------------------------------------------------------------------QUIZ STARTS FROM HERE---------------------------------------------------------------------------#
            
    elif choice == "3":
        i_label = "INSTRUCTIONS FOR HOW TO PLAY THE QUIZ MASTER"
        i = i_label.center(150)
        print(i, "\n")
        print("""1. You can create an account from ACCOUNT CREATION panel (if you are new user).
               \n2. You can login using the LOGIN PANEL (if you are a existing player).
               \n3. You can logout using the LOGOUT PANEL.
               \n4. All questions are based on five categories.
               \n5. Select one or more categories from the given list.
               \n6. Each category consists of 6 questions.
               \n7. To answer, you must press (A/B/C/D). Your final score will be given at the end.
               \n8. Each question consists of 1 point. There's no negative point for wrong answers.""")
        print("\n")
        label = "QUIZ CATEGORY LIST"
        x = label.center(150)
        print(x)
        table = tabulate([[1, 'Know your self', '6\n'],
                          [2, 'Sports', '6\n'],
                          [3, 'General Knowledge', '6\n'],
                          [4, 'Aptitude', '6\n'],
                          [5, 'Geography', '6\n']], headers=['S.No.', 'Category Name', 'Total questions'], tablefmt="grid", stralign="center")
        print(table)
        
        print("----------------------------------------------------------------QUIZ STARTS--------------------------------------------------------------------------------")
        tot_cat = int(input("\nHow many categories you want in your customized quiz:"))
        for a in range(tot_cat):
            cat_choice = int(input("\nEnter category no. to start with the quiz:"))
            k_score = 0 # To track the user's score
            s_score = 0  # To track the user's score
            g_score = 0  # To track the user's score
            a_score = 0  # To track the user's score
            ge_score = 0  # To track the user's score
            
#----------------------------------------------------------------------------CATEGORY 1 STARTS FROM HERE--------------------------------------------------------------------#
            
            if cat_choice == 1:
                c1_label = "KNOW YOUR SELF"
                c1 = c1_label.center(150)
                print(c1, "\n")
                # List of quiz questions with options and correct answer
                # Retrieve all questions from the database
                cursor.execute("SELECT * FROM kys")
                kys = cursor.fetchall()
                # Loop through the questions
                for p in kys:
                    q_id, question_text, option1, option2, option3, option4, correct_answer = p
                    print(f"\nQuestion: {question_text}")
                    print(f"1) {option1}")
                    print(f"2) {option2}")
                    print(f"3) {option3}")
                    print(f"4) {option4}")
                    # Get user's answer
                    try:
                        user_answer = int(input("Enter your answer (1-4): "))
                        if user_answer == correct_answer:
                            k_score += 1  # Correct answer, increase score
                            print("Correct!")
                        else:
                            print(f"Wrong! The correct answer was option {correct_answer}.\n")

                    except ValueError:
                        print("Invalid input! Please enter a number between 1 and 4.")
                query = "INSERT INTO leaderboard (username,k_score,s_score,gk_score,a_score,geo_score) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(query,(user,k_score,s_score,g_score,a_score,ge_score))
                con.commit()
                    
                # After the quiz, print the score
                if k_score<6:
                    print(f"""\nYour final score is: {k_score} out of {len(kys)}
                              \nDon't get discouraged! Try Again.""")
      
                else:
                    print(f"""\nYour final score is: {k_score} out of {len(kys)}
                              \nFantastic job! You nailed this quiz!""")
        
#-------------------------------------------------------------------------CATEGORY 2 STARTS FROM HERE-----------------------------------------------------------------------#                

            elif cat_choice == 2:
                c2_label = "SPORTS"
                c2 = c2_label.center(150)
                print(c2, "\n")
                # List of quiz questions with options and correct answer
                # Retrieve all questions from the database
                cursor.execute("SELECT * FROM sports")
                sports = cursor.fetchall()
                # Loop through the questions
                for q in sports:
                    q_id, question_text, option1, option2, option3, option4, correct_answer = q
                    print(f"\nQuestion: {question_text}")
                    print(f"1) {option1}")
                    print(f"2) {option2}")
                    print(f"3) {option3}")
                    print(f"4) {option4}")
                    # Get user's answer
                    try:
                        user_answer = int(input("Enter your answer (1-4): "))
                        if user_answer == correct_answer:
                            s_score += 1  # Correct answer, increase score
                            print("Correct!")
                        else:
                            print(f"Wrong! The correct answer was option {correct_answer}.\n")
                    except ValueError:
                        print("Invalid input! Please enter a number between 1 and 4.")
                query = "INSERT INTO leaderboard (username,k_score,s_score,gk_score,a_score,geo_score) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(query,(user,k_score,s_score,g_score,a_score,ge_score))
                con.commit()
                   
                # After the quiz, print the score
                if s_score<6:
                    print(f"""\nYour final score is: {s_score} out of {len(sports)}
                              \nDon't get discouraged! Try Again.""")
  
                else:
                    print(f"""\nYour final score is: {s_score} out of {len(sports)}
                          \nFantastic job! You nailed this quiz!""")
            
#--------------------------------------------------------------------------CATEGORY 3 STARTS FROM HERE---------------------------------------------------------------------#                 
            
            elif cat_choice == 3:
                c3_label = "GENERAL KNOWLEDGE"
                c3 = c3_label.center(150)
                print(c3, "\n")
                # List of quiz questions with options and correct answer
                # Retrieve all questions from the database
                cursor.execute("SELECT * FROM gk")
                gk = cursor.fetchall()
                
                # Loop through the questions
                for r in gk:
                    q_id, question_text, option1, option2, option3, option4, correct_answer = r
                    print(f"\nQuestion: {question_text}")
                    print(f"1) {option1}")
                    print(f"2) {option2}")
                    print(f"3) {option3}")
                    print(f"4) {option4}")
                    # Get user's answer
                    try:
                        user_answer = int(input("Enter your answer (1-4): "))
                        if user_answer == correct_answer:
                            g_score += 1  # Correct answer, increase score
                            print("Correct!")
                            
                        else:
                            print(f"Wrong! The correct answer was option {correct_answer}.\n")
                    except ValueError:
                        print("Invalid input! Please enter a number between 1 and 4.")
                query = "INSERT INTO leaderboard (username,k_score,s_score,gk_score,a_score,geo_score) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(query,(user,k_score,s_score,g_score,a_score,ge_score))
                con.commit()
                    
                # After the quiz, print the score
                if g_score<6:
                    print(f"""\nYour final score is: {g_score} out of {len(gk)}
                              \nDon't get discouraged! Try Again.""")
     
                else:
                    print(f"""\nYour final score is: {g_score} out of {len(gk)}
                              \nFantastic job! You nailed this quiz!""")
                    
#-------------------------------------------------------------------------CATEGORY 4 STARTS FROM HERE-----------------------------------------------------------------------#
                    
            elif cat_choice == 4:
                c4_label = "APTITUDE"
                c4 = c4_label.center(150)
                print(c4, "\n")
                # List of quiz questions with options and correct answer
                # Retrieve all questions from the database
                cursor.execute("SELECT * FROM aptitude")
                aptitude = cursor.fetchall()
               
                # Loop through the questions
                for s in aptitude:
                    q_id, question_text, option1, option2, option3, option4, correct_answer = s
                    print(f"\nQuestion: {question_text}")
                    print(f"1) {option1}")
                    print(f"2) {option2}")
                    print(f"3) {option3}")
                    print(f"4) {option4}")
                    # Get user's answer
                    try:
                        user_answer = int(input("Enter your answer (1-4): "))
                        if user_answer == correct_answer:
                             a_score += 1  # Correct answer, increase score
                             print("Correct!")
                             
                        else:
                            print(f"Wrong! The correct answer was option {correct_answer}.\n")
                    except ValueError:
                        print("Invalid input! Please enter a number between 1 and 4.")
                query = "INSERT INTO leaderboard (username,k_score,s_score,gk_score,a_score,geo_score) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(query,(user,k_score,s_score,g_score,a_score,ge_score))
                con.commit()
                # After the quiz, print the score
                if  a_score<6:
                    print(f"""\nYour final score is: {a_score} out of {len(aptitude)}
                              \nDon't get discouraged! Try Again.""")

                else:
                    print(f"""\nYour final score is: {a_score} out of {len(aptitude)}
                              \nFantastic job! You nailed this quiz!""")
                    
#--------------------------------------------------------------------------CATEGORY 5 STARTS FROM HERE---------------------------------------------------------------------#                

            elif cat_choice == 5:
                c5_label = "GEOGRAPHY"
                c5 = c5_label.center(150)
                print(c5, "\n")
                # List of quiz questions with options and correct answer
                # Retrieve all questions from the database
                cursor.execute("SELECT * FROM geo")
                geo = cursor.fetchall()
                
                # Loop through the questions
                for t in geo:
                    q_id, question_text, option1, option2, option3, option4, correct_answer = t
                    print(f"\nQuestion: {question_text}")
                    print(f"1) {option1}")
                    print(f"2) {option2}")
                    print(f"3) {option3}")
                    print(f"4) {option4}")
                    # Get user's answer
                    try:
                        user_answer = int(input("Enter your answer (1-4): "))
                        if user_answer == correct_answer:
                            ge_score += 1  # Correct answer, increase score
                            print("Correct!")
                        else:
                            print(f"Wrong! The correct answer was option {correct_answer}.\n")
                    except ValueError:
                        print("Invalid input! Please enter a number between 1 and 4.")
                query = "INSERT INTO leaderboard (username,k_score,s_score,gk_score,a_score,geo_score) VALUES (%s, %s, %s, %s, %s, %s)"
                cursor.execute(query,(user,k_score,s_score,g_score,a_score,ge_score))
                con.commit()
                # After the quiz, print the score
                if ge_score<6:
                    print(f"""\nYour final score is: {ge_score} out of {len(geo)}
                              \nDon't get discouraged! Try Again.""")
                else:
                    print(f"""\nYour final score is: {ge_score} out of {len(geo)}
                              \nFantastic job! You nailed this quiz!""")
                
#------------------------------------------------------------------QUIZ LEADERBPARD PART STARTS FROM HERE------------------------------------------------------------------#
                    
    elif choice == "4":
        ld_label = "QUIZ LEADERBOARD"
        ld = ld_label.center(150)
        print(ld, "\n")
        query2 ="SELECT username, sum(k_score+s_score+gk_score+a_score+geo_score) AS total_score FROM leaderboard group by username;"
        cursor.execute(query2)
        result= cursor.fetchall()
        for row in result:
            username, total_score = row
            table2 = tabulate([[username,total_score]], headers=['Username', 'Total Score'], tablefmt="grid", stralign="center")
            print(table2)
            cursor.close()
        print("\nThank you for playing our quiz!!")
        
#-----------------------------------------------------------------------QUIZ MASTER PROGRAM ENDS HERE----------------------------------------------------------------------#
        
    elif choice == "5":
        print("\nSuccessfully logged out from the quiz master!!")
        cursor.close()
        con.close()
        exit()
        
    else:
        print('WRONG INPUT, ENTER THE CHOICE AGAIN')
