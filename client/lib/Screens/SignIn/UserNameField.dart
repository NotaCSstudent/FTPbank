import 'package:google_fonts/google_fonts.dart';

import 'signin.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class UserNameField extends StatefulWidget {
  const UserNameField({
    Key? key,
  }) : super(key: key);

  @override
  _UserNameFieldState createState() => _UserNameFieldState();
}

class _UserNameFieldState extends State<UserNameField> {
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
            controller: userNameFieldController,
            style: GoogleFonts.habibi(
                textStyle:
                    TextStyle(color: LightGrey.withOpacity(0.8), fontSize: 20)),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              labelText: 'Username...',
              labelStyle: GoogleFonts.habibi(
                  textStyle: TextStyle(
                      color: LightGrey.withOpacity(0.8), fontSize: 20)),
            ),
            // onFieldSubmitted: (String? username) {
            //   print("Saved Username: $username");
            // },
            // validator: (user) {
            //   if (user == null || user.isEmpty) {
            //     return "Username cannot be empty";
            //   }
            //   return null;
            // },
          ),
        ),
      ),
    );
  }
}
