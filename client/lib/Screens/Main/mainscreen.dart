import 'package:client/Screens/SignIn/signin.dart';
import 'package:client/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:client/userinfo.dart';

// for now empty, add some dummy data here later after reading the API docs
// String name = User.name;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String? name = userNameFieldController.text;
    Size size = MediaQuery.of(context).size; // Size of the screen

    return Scaffold(
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: BackgroundColor.withOpacity(0.7),
        ),
        child: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Text(
                "test account",
                style: GoogleFonts.habibi(
                    textStyle: TextStyle(
                        color: LightBlueAccent,
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              )),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "Wallets",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.manage_accounts_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "Manage Accounts",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.trending_up_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "Spending Insights",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "App Settings",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "Help",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: LightBlueAccent,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: LightGrey,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      PageRouteBuilder(pageBuilder: (_, __, ___) => Signin()));
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu_outlined,
              color: PinkAccent,
              size: 35,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: Text(
          "test Wallet",
          style: GoogleFonts.habibi(
            textStyle: TextStyle(
                color: LightBlueAccent.withOpacity(0.8),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_rounded,
              color: PinkAccent,
              size: 35,
            ),
          )
        ],
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
            )
          ],
        ),
      ),
    );
  }
}
