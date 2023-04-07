import 'package:flutter/material.dart';
import 'package:flutterui/ui/components/rounded_input_field.dart';
import 'package:flutterui/ui/home_screen.dart';

import 'components/already_have_an_account_acheck.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        /*appBar: CustomAppBar(
          height: 200,
          child: ClipPath(
              clipper: CustomShape(),
              // this is my own class which extendsCustomClipper
              child: Container(
                height: 200,
                color: Color(0xff0f0f0f),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Image.asset("assets/images/sp_red_logo_trans.png",
                        height: size.height * 0.5, width: size.width * 0.6),
                  ),
                ),
              )),
        ),*/
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                SizedBox(height: size.height * 0.03),
                const Text(
                  "User Login",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
                SizedBox(height: size.height * 0.03),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    child: const Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 14),
                                  hintText: 'Enter Your E-mail Address',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  elevation: 5,
                  color: Colors.white,
                  child: Container(
                    child: const Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(fontSize: 14),
                                  hintText: 'Enter Your Password',
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.visibility),
                                  contentPadding: EdgeInsets.all(10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    // height: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Login Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
//                  function(context);
                  },
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Card(
                              margin:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                              elevation: 5,
                              color: Colors.white,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "Continue With  ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/google.png",
                                      width: 18,
                                    ),
                                  ],
                                ),
                              )),
                          Card(
                              margin:
                              EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                              elevation: 5,
                              color: Colors.white,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 15),
                                child: Row(
                                  children: [
                                    Text(
                                      "Continue With  ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/facebook.png",
                                      width: 18,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
//                  function(context);
                  },
                  child: Text(
                    "Not Account Yet?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                AlreadyHaveAnAccountCheck(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                ),

              ],
            ),
          ),
        ));
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }



}

/*class CustomAppBar extends PreferredSize {
  final Widget child;
  final double height;

  CustomAppBar({required this.child, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      color: Colors.white,
      alignment: Alignment.center,
      child: child,
    );
  }
}*/
