from flask import Flask, jsonify, request, session, redirect
import autehntication as db
import uuid
class User:
    def SignUp(self):
        print(request.form)
        user = {
            "_id" : uuid.uuid4().hex,
            "username" : request.form.get('username'),
            "email": request.form.get('email'),
            "password": request.form.get('password')
        }
        if db.userpass.find_one({"email": user["email"]}):
            return jsonify({"error":"Sorry, this email is already in use"}),400
        else:
            db.userpass.insert_one(
                { "_id" : user["_id"],
                "username": user["username"],
                "email" : user["email"],
                "password" : user["password"]
                }
            )
    def LogIn(self):
        print(request.form)
        user = {
            
            "email": request.form.get('email'),
            "password": request.form.get('password')
        }
        Validate = db.userpass.find_one("email":user["email"])
        if(Validate == None):
            return jsonify({"error": "Wrong Email or Password"}),400
        else:
            if(Validate["password"]==user["password"] and Validate["email"] == user["email"]):
                return jsonify({"Success": "You have logged into our system"}),400
            else:
                return jsonify({"error": "Wrong Email or Password"}),400 
        

        
        