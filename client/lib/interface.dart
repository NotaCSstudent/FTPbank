import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpStuff {
  final client = http.Client();

  ///Uses the http client from the http library

  var signUP = Uri.parse(
      'http://0.0.0.0:5000/signup'); //Parses the flask url and gets data

  signup(user, pass, email, name) async {
    http.Response response = await client.post(signUP, body: {
      'email': email,
      'password': pass,
      'username': user,
      'name': name
    });

    if (response.statusCode == 200) {
      print(convert.jsonDecode(response.body));
      print("FLUTTER SIGN UP ALL GOOD!");
      return true;
    } else if (response.statusCode == 400) {
      print(convert.jsonDecode(response.body));
      print("FLUTTER SIGN UP ALL BAD!");
      return false;
    } else if (response.statusCode == 500) {
      print("Uh oh network error");
      return false;
    }
  }

  var logIn = Uri.parse('http://0.0.0.0:5000/login');

  login(user, pass) async {
    http.Response response = await client.post(logIn, body: {
      'user': user,
      'password': pass,
    });

    if (response.statusCode == 200) {
      //If 200 we get into the page
      print(convert.jsonDecode(response.body));
      print("FLUTTER SIGN IN ALL GOOD!");
      return true;
    } else if (response.statusCode == 400) {
      print(convert.jsonDecode(response.body));
      print("FLUTTER SIGN IN ALL BAD!");
      return false;
    }
  }
}
