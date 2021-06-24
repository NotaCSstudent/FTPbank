import 'package:client/hash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:client/interface.dart';
import 'UserNameField.dart';
import '../../constants.dart';
import '../SignUp/signup.dart';
import 'LogoDark.dart';
import 'background.dart';
import 'package:http/http.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}

final userNameFieldController = TextEditingController();
final passwordFieldController = TextEditingController();

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; // Size of the screen

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          LogoDark(size: size),
          const SizedBox(
            height: 75,
          ),
          UserNameField(),
          const SizedBox(
            height: 50,
          ),
          PasswordField(),
          const SizedBox(
            height: 50,
          ),
          SignInBttn(),
          SizedBox(height: 25),
          ForgotPassText(),
          NewUserText(),
        ],
      ),
    );
  }
}

class SignInBttn extends StatelessWidget {
  const SignInBttn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 262,
      child: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: MedBlueAccent.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                color: LightBlueAccent.withOpacity(0.2),
              ),
            )),
        child: Text(
          "Sign in",
          style: GoogleFonts.habibi(
              textStyle: TextStyle(
            color: LightGrey.withOpacity(0.8),
            fontSize: 24,
          )),
        ),
        onPressed: () {
          if (userNameFieldController.text.length == 0 ||
              passwordFieldController.text.length == 0) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: DarkBlueAccent,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  color: LightBlueAccent.withOpacity(0.2),
                ),
              ),
              padding: EdgeInsets.all(8),
              content: Text(
                "Fields cannot be empty",
                textAlign: TextAlign.center,
                style: GoogleFonts.habibi(
                  textStyle: TextStyle(
                    color: LightGrey.withOpacity(0.8),
                    fontSize: 20,
                  ),
                ),
              ),
            ));
          } else {
            var url = Uri.http('http://127.0.0.1:5000/ ', 'hello');
            print("Username: ");
            print(userNameFieldController.text);
            print("Password: ");
            print(passwordFieldController.text);
            print(hash(passwordFieldController.text));
            var Log_Me_In = HttpStuff();
            // if password exists, go to the next screen
            // else, return error like above stating password or email are incorrect
          }

          // send a request here through the tunnel with the credentials
        },
      ),
    );
  }
}

class ForgotPassText extends StatelessWidget {
  const ForgotPassText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // button if user forgets password
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Forgot Password?",
            style: GoogleFonts.habibi(
              textStyle: TextStyle(
                  color: LightGrey.withOpacity(0.8),
                  fontSize: 20,
                  decoration: TextDecoration.underline),
            )),
      ),
      onTap: () {
        // Currently nothing happens
        print("You forgot ur password");
      },
    );
  }
}

class NewUserText extends StatelessWidget {
  const NewUserText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // button for a user to make an account
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "New here? Sign up!",
          style: GoogleFonts.habibi(
              textStyle: TextStyle(
                  color: LightGrey.withOpacity(0.8),
                  fontSize: 20,
                  decoration: TextDecoration.underline)),
        ),
      ),
      onTap: () {
        Navigator.push(
            context,
            PageRouteBuilder(
                pageBuilder: (_, __, ___) =>
                    SignUp())); // if the user is not registered go to the sign up page
      },
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
      child: Form(
        child: Container(
          decoration: BoxDecoration(
              color: LightBlueAccent.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: TextFormField(
            controller: passwordFieldController,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            style: GoogleFonts.habibi(
                textStyle: TextStyle(
              color: LightGrey.withOpacity(0.8),
              fontSize: 20,
            )),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                labelText: 'Password...',
                labelStyle: GoogleFonts.habibi(
                  textStyle: TextStyle(
                      color: LightGrey.withOpacity(0.8), fontSize: 20),
                )),
            onSaved: (String? pass) {
              print("Saved pass: $pass");
              // print(passwordFieldController.text);
            },
            validator: (pass) {
              if (pass == null || pass.isEmpty) {
                return "Password cannot be empty";
              } // here we also need to add the database validation stuff
              return null;
            },
          ),
        ),
      ),
    );
  }
}
