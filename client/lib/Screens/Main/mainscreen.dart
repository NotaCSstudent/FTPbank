import 'package:client/Screens/SignIn/background.dart';
import 'package:client/Screens/SignIn/signin.dart';
import 'package:client/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// for now empty, add some dummy data here later after reading the API docs

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? name = userNameFieldController.text;
    Size size = MediaQuery.of(context).size; // Size of the screen

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 8),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                alignment: FractionalOffset.center,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.menu_outlined,
                      color: PinkAccent,
                      size: 35,
                    ),
                    Spacer(),
                    Text(
                      "$name's Wallet",
                      style: GoogleFonts.habibi(
                        textStyle: TextStyle(
                            color: LightBlueAccent.withOpacity(0.8),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.add_rounded,
                      color: PinkAccent,
                      size: 35,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );

    // return Container(
    //   color: BackgroundColor,
    //   child: Padding(
    //     padding: const EdgeInsets.all(20.0),
    //     child: Column(
    //       children: [
    //         Row(

    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}

// Row(
//           children: [
//             Icon(
//               Icons.list_outlined,
//               color: PinkAccent,
//               size: 25,
//             ),
//             Text(
//               "Hello $name",
//               style: GoogleFonts.habibi(
//                 textStyle: TextStyle(
//                   color: LightBlueAccent.withOpacity(0.8),
//                   fontSize: 25,
//                 ),
//               ),
//             ),
//             Icon(
//               Icons.add_rounded,
//               color: PinkAccent,
//               size: 25,
//             ),
//           ],
//         ),