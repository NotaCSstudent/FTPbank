from flask import Flask
from flask import Blueprint
import auth as au
import json
import flask





app = Flask(__name__)




#Routes for FTP Bank

import routes

@app.route('/')
def home():
    return "hello World"