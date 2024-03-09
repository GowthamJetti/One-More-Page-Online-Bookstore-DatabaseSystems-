
# mysql connector hearder
import mysql.connector

#mysql database connection 
mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'root',
    port = '3306',
    database = 'onemorepage'
)


print("\n\n***** One More Page Online Bookstore ***** \n")
# print Users table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Users")
userTbl = dbCursor.fetchall()
print("\n--------------------------------------")
print("Users Table Values:")
print("--------------------------------------")
with open('Users.txt','w') as f:
    for usr in userTbl:
        f.write(str(usr))
        f.write('\n')
        # print user text file
        print(usr)
print("\n--------------------------------------")
# print Authors table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Authors")
authorTbl = dbCursor.fetchall()
print("Authors Table Values:")
print("--------------------------------------")
with open('Authors.txt','w') as f:
    for aut in authorTbl:
        f.write(str(aut))
        f.write('\n')
        # display the text file
        print(aut)
print("\n--------------------------------------")
# print Publishers table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Publishers")
publisherTbl = dbCursor.fetchall()
print("Publishers Table Values:")
print("--------------------------------------")
with open('Publishers.txt','w') as f:
    for publ in publisherTbl:
        f.write(str(publ))
        f.write('\n')
        # display the text file
        print(publ)
print("\n--------------------------------------")
# print Categories table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Categories")
categoryTbl = dbCursor.fetchall()
print("Categories Table Values:")
print("--------------------------------------")
with open('Categories.txt','w') as f:
    for cate in categoryTbl:
        f.write(str(cate))
        f.write('\n')
        # display the text file
        print(cate)
print("\n--------------------------------------")
# print Books table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Books")
bookTbl = dbCursor.fetchall()
print("Books Table Values:")
print("--------------------------------------")
with open('Books.txt','w') as f:
    for bok in bookTbl:
        f.write(str(bok))
        f.write('\n')
        # display the text file
        print(bok)
print("\n--------------------------------------")
# print Orders table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Orders")
orderTbl = dbCursor.fetchall()
print("Orders Table Values:")
print("--------------------------------------")
with open('Orders.txt','w') as f:
    for ords in orderTbl:
        f.write(str(ords))
        f.write('\n')
        # display the text file
        print(ords)

print("\n--------------------------------------")
# print OrderDetails table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from OrderDetails")
orderDetailTbl = dbCursor.fetchall()
print("OrderDetails Table Values:")
print("--------------------------------------")
with open('OrderDetails.txt','w') as f:
    for ordes in orderDetailTbl:
        f.write(str(ordes))
        f.write('\n')
        # display the text file
        print(ordes)
print("\n--------------------------------------")
# print Reviews table using cursor
dbCursor = mydb.cursor()
dbCursor.execute("select * from Reviews")
reviewTbl = dbCursor.fetchall()
print("Reviews Table Values:")
print("--------------------------------------")
with open('Reviews.txt','w') as f:
    for rev in reviewTbl:
        f.write(str(rev))
        f.write('\n')
        # display the text file
        print(rev)
print("\n\n")





     
