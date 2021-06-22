import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class HttpStuff {
    final client = http.Client();
  var loginUrl = Uri.parse('http://127.0.0.1:5000/signup');
   login(user, pass, email) async {
    http.Response response = await client.post(loginUrl, body: {
      'email': email,
      'password': pass,
      'username': user,
    });
    
    if (response.statusCode == 200) {
      print(convert.jsonDecode(response.body));
    }
  }
}
