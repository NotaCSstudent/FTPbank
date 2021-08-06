import 'package:client/Screens/SignIn/background.dart';
import 'package:client/Screens/SignIn/signin.dart';
import 'package:client/Screens/SignIn/signinbtn.dart';
import 'package:client/Screens/SignUp/signupbtn.dart';
import 'package:client/Screens/Main/cardmodel.dart';
import 'package:client/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:client/userinfo.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';



// for now empty, add some dummy data here later after reading the API docs
// String name = User.name;

class MainScreen extends StatelessWidget {
  
  const MainScreen({Key? key}) : super(key: key);

  @override
  List<Widget> shapes() {
    return [
      Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: new Center(
                      child: new Text(
                        "Chase Bank",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    )),

                    Container(
                      height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                      child: new Center(
                      child: new Text(
                        "Bank Of America",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                    )
                    )
                    ];//this will be our cards when we use our carousel
  }
  Widget build(BuildContext context) {
    // String? name = userNameFieldController.text;
    Size size = MediaQuery.of(context).size; // Size of the screen
    final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double topContainer = 0;
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
                "$users_name's account",
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
          "$users_name's Wallet",
          style: GoogleFonts.habibi(
            textStyle: TextStyle(
                color: LightBlueAccent.withOpacity(0.8),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          PopupMenuButton(
              color: BackgroundColor.withOpacity(0.7),
              icon: Icon(
                Icons.add_rounded,
                color: PinkAccent,
                size: 35,
              ),
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text(
                        "Add Card",
                        style: GoogleFonts.habibi(
                          textStyle: TextStyle(color: LightGrey, fontSize: 18),
                        ),
                      ),
                      value: 0,
                    ),
                    PopupMenuItem(
                      child: Text(
                        "Add Transaction",
                        style: GoogleFonts.habibi(
                          textStyle: TextStyle(color: LightGrey, fontSize: 18),
                        ),
                      ),
                      value: 2,
                    )
                  ])
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.credit_card_rounded,
                    color: LightBlueAccent,
                    size: 25,
                  ),
                  Spacer(),
                  Text(
                    "Cards",
                    style: GoogleFonts.habibi(
                      textStyle: TextStyle(
                          color: PinkAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            // put cards here
            //insights?
            // then put the transactions

            
            Center(
              child: Stack(
                children: [
                  CarouselSlider(items: shapes(),
                   options: CarouselOptions(
                     enlargeCenterPage: true,
                     aspectRatio : 18/2,

                   ))
                ],
              ),
            ),

            Center(),
          ],
        ),
      ),
    );
  }
}


class CategoriesScroller extends StatelessWidget {
  const CategoriesScroller();

  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.orange.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Most\nFavorites",
                        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.blue.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Newest",
                          style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "20 Items",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                margin: EdgeInsets.only(right: 20),
                height: categoryHeight,
                decoration: BoxDecoration(color: Colors.lightBlueAccent.shade400, borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Super\nSaving",
                        style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

