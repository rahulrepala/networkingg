import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/details/businessRegister.dart';
import 'package:networkingg/details/userRegistration.dart';
import 'package:networkingg/utils/constants.dart';

class Choose extends StatefulWidget {
  @override
  _ChooseState createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
  
    Size size= MediaQuery.of(context).size;

    return Scaffold(
     body: SafeArea(
            child: Stack(
            children: [
           
             Align(
               alignment: Alignment(0,-0.8),
                child: InkWell(
                onTap: (){
                    Navigator.pushAndRemoveUntil(
                       context,
                       MaterialPageRoute(
                       builder: (context) => UserRegister()),
                       (Route<dynamic> route) => true,
                      );
                    },
                 child: Container(
                    height: size.width/2,
                    width: size.width/2,
                    margin:
                         const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(color: Constants.kSecondary, width: 2)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Entypo.user, size: 30, color: Colors.grey[300]),
                        SizedBox(height:15),
                        Text('Personal',style: TextStyle(color: Constants.kPrimary),)
                      ],
                    ),
                    ),
                   ),
                       ),  

             Align(
                alignment: Alignment(0,0.4),
                 child: InkWell(
                     onTap: (){
                         Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                            builder: (context) => BusinessRegister()),
                            (Route<dynamic> route) => true,
                           );
                         },
                      child: Container(
                         height: size.width/2,
                         width: size.width/2,
                         margin:
                              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
                         decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color: Colors.white,
                         border: Border.all(color: Constants.kSecondary, width: 2)),
                         child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Entypo.users, size: 30, color: Colors.grey[300]),
                        SizedBox(height:15),
                        Text('Business',style: TextStyle(color: Constants.kPrimary),)
                      ],
                    ),
                         ),
                        ),
             ),                

           ],
        ),
     ),   
    );
  }
}