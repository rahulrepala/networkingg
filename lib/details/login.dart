import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/details/choose.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  //  ScreenUtil.init(context, width: 750, height: 1300, allowFontScaling: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                      child: Text(
                    "Welcome ",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: size.height/24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "to ",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: size.height/24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      "Connector",
                      style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: size.height/24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
                Image.asset(
                            'assets/images/connectors.png',
                            height: size.height/ 4,
                          ),

                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Text(
                        "The best way to meet people who have",
                        style: TextStyle(
                            fontSize: size.height/45,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text(
                        "goals as you. Let's get Started!",
                        style: TextStyle(
                            fontSize: size.height/45,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: Center(
                      child: Text(
                    "Login / Signup",
                    style: TextStyle(
                        fontSize: size.height/45,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 3),
                  child: ButtonTheme(
                    minWidth: size.width,
                    height: size.height/15,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Choose()),
                          (Route<dynamic> route) => true,
                        );
                      },
                      color: Color(0xfff6f6f6),
                      textColor: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width:size.width/40,
                          ),
                          Icon(AntDesign.mobile1, color: Color(0xff0D8E88),size: size.height/32),

                          Expanded(
                            child: Center(
                              child: Text("Continue With Phone   ",
                                  style: TextStyle(fontSize: size.height/42)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height/55),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 5),
                  child: ButtonTheme(
                    minWidth: size.width,
                    height: size.height/15,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          // side: BorderSide(color: Colors.grey[50])
                        ),
                      onPressed: () {
                       // _signIn();
                      },
                      color: Color(0xfff6f6f6),
                      textColor: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          SizedBox(
                            width: size.width/40,
                          ),
                          Icon(AntDesign.google,color: Color(0xffdb4a39),size: size.height/30,),
                          Expanded(
                            child: Center(
                              child: Text("Continue With Google   ",
                                  style: TextStyle(fontSize: size.height/42)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height/55),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 5),
                  child: ButtonTheme(
                    minWidth: size.width,
                    height: size.height/15,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0)),
                      onPressed: () {
                                           },
                      color: Color(0xfff6f6f6),
                      textColor: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                         SizedBox(
                         width: size.width/40,
                         ),
                          Icon(AntDesign.facebook_square,color: Color(0xff3B5998),size: size.height/32),

                          Expanded(
                            child: Center(
                              child: Text("Continue With Facebook   ",
                                  style: TextStyle(fontSize: size.height/42)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Center(
                      child: Column(
                    children: <Widget>[
                      Text(
                        "By Signing up you agree to the",
                        style: TextStyle(
                            fontSize: size.height/55,
                            letterSpacing: 0.2,
                            fontWeight: FontWeight.w300,
                            color: Colors.black),
                      ),
                      GestureDetector(
                          onTap: () {
                         //   _launchURL('https://letsmarch.in/termsofuse.html');
                          },
                          child: Text(
                            "Terms of Use",
                            style: TextStyle(
                                fontSize: size.height/55,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.underline,
                                color: Colors.black),
                          )),
                    ],
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
   
}

