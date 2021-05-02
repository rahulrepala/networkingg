import 'package:flutter/material.dart';
import 'package:networkingg/profile/viewProfile.dart';
import 'package:networkingg/utils/constants.dart';

class FindProfiles extends StatefulWidget {
  @override
  _FindProfilesState createState() => _FindProfilesState();
}

class _FindProfilesState extends State<FindProfiles> {
  
  int pageNo = 0;

    BoxDecoration selected() {
    return BoxDecoration(
        color: Constants.kSecondary,
        border: Border.all(width: 1, color: Constants.kSecondary),
        borderRadius: (pageNo == 0)
            ? BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
            : BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)));
  }

  BoxDecoration unSelected() {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Constants.kSecondary),
        borderRadius: (pageNo == 1)
            ? BorderRadius.only(
                topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
            : BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15)));
  }

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
      return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: size.width,
                height: size.height * 0.22,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Constants.kSecondary,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.elliptical(250, 120))),
                      ),
                    ),
                    Positioned(
                        top: 30,
                        right: 5,
                        child: Container(
                              width: 100,
                          height: 100,
                        )
                        //  Image.asset(
                        //   "assets/images/09.png",
                        //   width: 100,
                        //   height: 100,
                        // )
                        ),
                    Positioned(
                      top: size.height*0.05,
                      left: 25,
                      child: RichText(
                        text: TextSpan(
                            text: "A New Great Day,\n",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: size.height*0.028,
                                color: Constants.kPrimary,
                                wordSpacing: 1,
                                letterSpacing: 0,
                                //height: 1.5,
                                fontFamily: 'Nunito'),
                            children: [
                              TextSpan(
                                  text: "Ramos",
                                  style:
                                      TextStyle(fontWeight: FontWeight.normal))
                            ]),
                      ),
                    ),
                    Container(
                      child: Positioned(
                          bottom: 13,
                          left: 25,
                          child: Text(
                            "March towards your goal\nwith like minded souls",
                            style: TextStyle(
                               color: Constants.kPrimary,
                                textBaseline: TextBaseline.alphabetic,
                                fontSize: size.height*0.02,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 6.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            pageNo = 0;
                          });
                        },
                        child: Container(
                          width: 120,
                          height: size.height * 0.06,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.business_center,
                                  size: 18,
                                  color: Constants.kPrimary,
                                ),
                                Text(
                                  "Business",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,color:Constants.kPrimary),
                                ),
                              ],
                            ),
                          ),
                          decoration: (pageNo == 0) ? selected() : unSelected(),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            pageNo = 1;
                          });
                        //  _getAllPeople();
                        },
                        child: Container(
                          width: 120,
                          height: size.height * 0.06,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.person,
                                  size: 18,
                                  color: Constants.kPrimary,
                                ),
                                Text(
                                  "Profile",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Constants.kPrimary,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          decoration: (pageNo == 1) ? selected() : unSelected(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // (pageNo == 0)
              //     ? (details.length > 0)
              //         ? 
                      Stack(
                          children: List.generate(1, (index) {
                          // var uinfo = details[(details.length - 1) - index]
                          //     ['user_info'];
                          // return cardGenerator(
                          //     uinfo['personName'],
                          //     uinfo['personId'],
                          //     uinfo['personName'],
                          //     uinfo['personPic'],
                          //     uinfo['personProfession'],
                          //     uinfo['personLocation'],
                          //     uinfo['personBio'],
                          //     details[(details.length - 1) - index]
                          //         ['goal_info'],
                          //     [],
                          //     (details.length - 1) - index);
                         return pageNo==0? GestureDetector(
        onVerticalDragUpdate: (x) {
          if (x.delta.dy <= -6) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewProfile()));
          }
        },
        child: SizedBox(
          width: size.width * 0.95,
          height: (0.58 * size.height),
          child: Card(
            color: Colors.white,
            shadowColor: Colors.grey[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            // elevation: 5.0 * (index),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    child: Image.network('https://cdn3.iconfinder.com/data/icons/social-media-logos-glyph/2048/5315_-_Apple-512.png')),
                  Text('Apple',style: TextStyle(color: Constants.kPrimary,fontWeight: FontWeight.bold),),
                  Text('Computer Industry')
                ],
              ),
            ),
          ),
        )):
        GestureDetector(
        onVerticalDragUpdate: (x) {
          if (x.delta.dy <= -6) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ViewProfile()));
          }
        },
        child: SizedBox(
          width: size.width * 0.95,
          height: (0.58 * size.height),
          child: Card(
            color: Colors.white,
            shadowColor: Colors.grey[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            // elevation: 5.0 * (index),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    child: Image.network('https://toppng.com/uploads/preview/free-icons-png-end-user-ico-11563023311aleysnhavq.png')),
                  Text('Andy'),
                  Text('I am Full Stack developer ')
                ],
              ),
            ),
          ),
        ));
                        
                        }))
                  //     : nlen == 0
                  //         ? Center(
                  //             child: Image.asset(
                  //               "assets/images/animat-search-color.gif",
                  //               height: 125.0,
                  //               width: 125.0,
                  //             ),
                  //           )
                  //         : Container(
                  //             child: Column(
                  //             children: <Widget>[
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 20.0),
                  //                 child: Image.asset(
                  //                   'assets/images/oops.png',
                  //                   height: size.height / 2.5,
                  //                 ),
                  //               ),
                  //               Padding(
                  //                 padding: const EdgeInsets.only(top: 8.0),
                  //                 child: Center(
                  //                   child: Text(
                  //                     'No Similar People',
                  //                     style: TextStyle(
                  //                         fontWeight: FontWeight.bold),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ))
                  // : showAllProfiles(),
            ],
          ),
        ));
  }
}