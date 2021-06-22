from flask import Flask
from flask.json import jsonify
from app import app
from users import User


@app.route('/signup', methods=['GET','POST'])
def signup():
    t = User().SignUp()
    print(t)
    
    return User().SignUp()