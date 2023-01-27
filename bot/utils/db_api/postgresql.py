import psycopg2

def send_ex(command):
    mydb = psycopg2.connect(user="postgres",
                            password="990380971@@",
                            host="127.0.0.1",
                            port="5432",
                            database="tuit")
    mycursor = mydb.cursor()

    mycursor.execute(command)
    res = mycursor.fetchall()
    mydb.commit()
    mycursor.close()
    mydb.close()
    return res