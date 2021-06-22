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

        
        