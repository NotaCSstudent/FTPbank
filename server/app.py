from flask import Flask, Blueprint
from flask_cors import CORS
import auth as au
import json
import flask





app = Flask(__name__)
CORS(app)




#Routes for FTP Bank

import routes

@app.route('/')
def home():
    return "hello World"