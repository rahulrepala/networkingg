import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:networkingg/profile/editbusinessprofile.dart';
import 'package:networkingg/profile/edituserprofile.dart';
import 'package:networkingg/utils/urllauncher.dart';
import 'package:url_launcher/url_launcher.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool switchVal1 = false;
  bool switchVal2 = false;
  // FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //     FlutterLocalNotificationsPlugin();

  // @override
  // void initState() {
  // }

  // Future onSelectNotification(String payload) async {
  //   print("Tapped on Notification");
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    onSwitched_1(bool newval) {
      setState(() {
        switchVal1 = newval;
      });
    }

    onSwitched_2(bool newval) {
      setState(() {
        switchVal2 = newval;
      });
    }

    BoxDecoration myBoxDecoration() {
      return BoxDecoration(
        border: Border.all(width: 1.0, color: Theme.of(context).primaryColor),
        borderRadius: BorderRadius.all(
            Radius.circular(45.0) //         <--- border radius here
            ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.black,
              fontSize: size.height / 32,
              fontFamily: 'Nunito'),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          // color: Colors.grey.withAlpha(30),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 15),
                width: size.width / 0.5,
                height: size.height / 1.4,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.white),
                child: Column(
                  children: <Widget>[
                    // Edit Profile 1st
                    InkWell(
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                              child: Center(
                                child: Text(
                                  "Edit Profile",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: size.height / 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: size.width,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                              iconSize: 20,
                              onPressed: null,
                            )
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditBusinessProfile()),
                        );
                      },
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Center(
                                child: Text(
                                  "Privacy Policies",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: size.height / 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: size.width,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              onPressed: () =>
                                  launchURL('http://march.lbits.co/privacy-policy.html'),
                            )
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                      ),
                      onTap: () => launchURL('http://march.lbits.co/privacy-policy.html'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Center(
                                child: Text(
                                  "Terms of Use",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: size.height / 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: size.width,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              onPressed: () => launchURL(
                                  'http://march.lbits.co/terms-and-conditions.html'),
                            )
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                      ),
                      onTap: () =>
                          launchURL('http://march.lbits.co/terms-and-conditions.html'),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    InkWell(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Center(
                                child: Text(
                                  "FAQ's",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: size.height / 40,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      letterSpacing: 0.3),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                width: size.width,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.arrow_forward_ios),
                              iconSize: 20,
                              onPressed: () {},
                            )
                          ],
                        ),
                        height: 50,
                        width: double.infinity,
                      ),
                      onTap: () => debugPrint("FAQ's"),
                    ),
                  ],
                ),
              ),

              Container(height: size.height / 28, width: double.infinity),
              // LogOut Button
              InkWell(
                child: Container(
                  width: size.width / 2,
                  height: size.height / 12,
                  decoration: myBoxDecoration(),
                  child: Center(
                    child: Text(
                      "LOG OUT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                ),
                onTap: () async {
                  // SharedPreferences prefs =
                  //     await SharedPreferences.getInstance();
                  // prefs.setInt('log', 0);
                  // prefs.remove('token');
                  // prefs.remove('uid');
                  // prefs.remove('id');
                  // prefs.remove('age');
                  // var db = new DataBaseHelper();
                  // await db.deleteUserInfo();
                  // await db.deleteGoalsInfo();
                  // await db.deleteFriendsInfo();
                  // await db.deleteMessages();
                  // flutterLocalNotificationsPlugin.cancelAll();
                  // Navigator.pop(context, true);
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Login()),
                  // );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}


