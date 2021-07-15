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
      drawer: Drawer(
        semanticLabel: "ABC",
        child: ListView(
          // padding: EdgeInsets.zero,

          children: <Widget>[
            DrawerHeader(
                decoration:
                    BoxDecoration(color: BackgroundColor.withOpacity(0.8)),
                child: Text(
                  "$name's account",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightBlueAccent,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                )),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 8),
        width: size.width,
        height: size.height,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                alignment: FractionalOffset.center,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // Scaffold.of(context).openDrawer();
                      },
                      child: Icon(
                        Icons.menu_outlined,
                        color: PinkAccent,
                        size: 35,
                      ),
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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_rounded,
                        color: PinkAccent,
                        size: 35,
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
