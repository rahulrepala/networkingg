import 'package:flutter/material.dart';
import 'package:networkingg/details/login.dart';
import 'package:networkingg/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xff00203f),
        accentColor: Constants.kSecondary,
        buttonBarTheme:
            ButtonBarThemeData(buttonTextTheme: ButtonTextTheme.accent),
        textTheme: TextTheme(
          button: TextStyle(
                color: Colors.white,fontWeight: FontWeight.w700, fontSize: 17),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}

