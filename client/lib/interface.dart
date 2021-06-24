import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpStuff {
  final client = http.Client();///Uses the http client from the http library




  var signUP = Uri.parse('http://127.0.0.1:5000/signup');//Parses the flask url and gets data

  signup(user, pass, email) async {
    http.Response response = await client.post(signUP, body: {
      'email': email,
      'password': pass,
      'username': user,
    });

    if (response.statusCode == 200) {
      print(convert.jsonDecode(response.body));
    }
  }

  var logIn = Uri.parse('http://127.0.0.1:5000/login');

  login(pass, email) async {
    http.Response response = await client.post(signUP, body: {
      'email': email,
      'password': pass,
    });

    if (response.statusCode == 200) {//If 200 we get into the page
      print(convert.jsonDecode(response.body));
    }
  }
}
