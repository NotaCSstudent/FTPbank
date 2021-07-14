import 'package:client/Screens/SignIn/signin.dart';
import 'package:client/Screens/SignUp/signup.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FTPBank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: BackgroundColor,
        scaffoldBackgroundColor: BackgroundColor,
      ),
      home: SafeArea(child: Signin()),
    );
  }
}
