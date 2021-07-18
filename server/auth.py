import pymongo
import dns
import os
from dotenv import load_dotenv

load_dotenv()

Mongo_URI = os.getenv('dburi')
client = pymongo.MongoClient(Mongo_URI)

# client = pymongo.MongoClient('mongodb+srv://<NAME>:<PASS>@cluster0.bxtpa.mongodb.net/myFirstDatabase?retryWrites=true&w=majority')

data = client.get_database("FTP_DB")## Access our collection
userpass = data['userpass'] ## This is for authentication
userinfo = data['userinfo'] ## The Users information

test = {"user": "abc", "pass": "abc"}
t = userpass.count_documents({})
#print("Test Login:\t", test)
#print("Number of docs in db:\t", t)
#print()


# def New_User(name :str,password : str) -> bool:
#     name = name.lower()
#     if(userpass.find_one({'user': name}) != None):
#         return False ##another user with that name
#     else:
#         size = userpass.count_documents({})## index will be at the end of database
#         userpass.insert_one({'_id':size+1,'user':name,'pass':password})
#         return True ##New user added


# def Find_User(name : str, password : str) -> bool:
#     name = name.lower() ##makes the user name lowercase just in case the user makes a mistake
#     Auth_Boi = userpass.find_one({'user':name})##Finds the user name first
#     if(Auth_Boi != None):
#         if(Auth_Boi['pass']==password):
#             return True## if the pass == password that will return true
#         else: 
#             return False
#     else:
#         return False

