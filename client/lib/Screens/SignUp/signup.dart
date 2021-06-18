import '../SignIn/signin.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../SignIn/LogoDark.dart';
import 'background.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Size of the screen
    return Background(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LogoDark(size: size),
          const SizedBox(
            height: 10,
          ),
          NameField(),
          const SizedBox(
            height: 40,
          ),
          EmailField(),
          const SizedBox(
            height: 40,
          ),
          PasswordField(),
          SizedBox(height: 40),
          ConfirmPasswordField(),
          SizedBox(height: 20),
          ExistingUserText(),
          // ForgotPassText(),
          // NewUserText(),
        ],
      ),
    );
  }
}

class ExistingUserText extends StatelessWidget {
  const ExistingUserText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Already a user? Sign In!",
          style: TextStyle(
              color: LightGrey.withOpacity(0.8),
              fontSize: 20,
              decoration: TextDecoration.underline),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, PageRouteBuilder(pageBuilder: (_, __, ___) => Signin()));
      },
    );
  }
}

class NameField extends StatefulWidget {
  const NameField({
    Key? key,
  }) : super(key: key);

  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 262,
      child: Container(
        decoration: BoxDecoration(
            color: LightBlueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextFormField(
          style: TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Name...',
            labelStyle:
                TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
            // fillColor: LightBlueAccent.withOpacity(0.2),
          ),
          onFieldSubmitted: (String email) {
            print("Saved Email: $email");
          },
        ),
      ),
    );
  }
}

class EmailField extends StatefulWidget {
  const EmailField({
    Key? key,
  }) : super(key: key);

  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 262,
      child: Container(
        decoration: BoxDecoration(
            color: LightBlueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextFormField(
          style: TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Email...',
            labelStyle:
                TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
            // fillColor: LightBlueAccent.withOpacity(0.2),
          ),
          onFieldSubmitted: (String email) {
            print("Saved Email: $email");
          },
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 262,
      child: Container(
        decoration: BoxDecoration(
            color: LightBlueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextFormField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          style: TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Password...',
            labelStyle:
                TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
            // fillColor: LightBlueAccent.withOpacity(0.2),
          ),
          onFieldSubmitted: (String pass) {
            print("Saved pass: $pass");
          },
        ),
      ),
    );
  }
}

class ConfirmPasswordField extends StatefulWidget {
  const ConfirmPasswordField({
    Key? key,
  }) : super(key: key);

  @override
  _ConfirmPasswordFieldState createState() => _ConfirmPasswordFieldState();
}

class _ConfirmPasswordFieldState extends State<ConfirmPasswordField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 262,
      child: Container(
        decoration: BoxDecoration(
            color: LightBlueAccent.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: TextFormField(
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          style: TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            labelText: 'Confirm Password...',
            labelStyle:
                TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20),
            // fillColor: LightBlueAccent.withOpacity(0.2),
          ),
          onFieldSubmitted: (String pass) {
            print("Saved pass: $pass");
          },
        ),
      ),
    );
  }
}

// String takePass(String pass) {
//   return pass;
// }

// bool verifyPass(){
//   String s1 = takePass(pass)
// }
