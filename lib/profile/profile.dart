import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/dashboard/settings.dart';
import 'package:networkingg/utils/backprofile.dart';
import 'package:networkingg/utils/constants.dart';
import 'package:networkingg/utils/urllauncher.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
  
  Size size=MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomPaint(
                  painter: BackProfile(context),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              width: size.width / 10,
                            ),
                          Expanded(
                            child: Center(
                                child: Text(
                                  "Your Profile",
                                  style: TextStyle(
                                    color: Constants.kPrimary,
                                    fontSize: size.height / 32,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Settings()),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                  child: Icon(Icons.settings,color: Constants.kPrimary)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Container(
                      //  color: Colors.white,
                      //  decoration: Box,  
                      height: MediaQuery.of(context).size.height*0.2,
                      child: Image.network('https://cdn3.iconfinder.com/data/icons/social-media-logos-glyph/2048/5315_-_Apple-512.png')),
                      Text('Apple',style: TextStyle(color: Constants.kPrimary)),
                      SizedBox(height: 30,),
                    ],
                  ),
                ),

                  Card(
                    color: Colors.white,
                    shadowColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    // elevation: 5.0 * (index),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                         Text('About -',style: TextStyle(fontWeight: FontWeight.bold),),
                         SizedBox(height:10),
                         Text('Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. It'),
                         SizedBox(height:15),
                         Text('Industry -',style: TextStyle(fontWeight: FontWeight.bold),),
                         SizedBox(height:10),
                         Text('Computer Industry'),
                        ],
                      ),
                    ),
                  ),

                Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 260,
          child: Card(
            color: Colors.white,
            shadowColor: Colors.grey[50],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            // elevation: 5.0 * (index),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Text('Contact -',style: TextStyle(fontWeight: FontWeight.bold),),
                 ListTile(
                   leading: Icon(MaterialCommunityIcons.gmail,color: Colors.red,),
                   title: Text('Email'),
                   subtitle: GestureDetector(
                     onTap: (){
                      final Uri params = Uri(
                           scheme: 'mailto',
                           path: 'apple@mail.com',
                           query: 'subject=App Feedback&body=App Version 3.23', //add subject and body here
                           );

                       var url = params.toString();
                      launchURL(url);
                     },
                     child: Text('apple@mail.com',style: TextStyle(color: Colors.blue),)),
                 ),
                 ListTile(
                   leading: Icon(Feather.phone),
                   title: Text('Phone'),
                   subtitle: GestureDetector(
                     onTap: (){
                       launchURL("tel://9898989898");
                     },
                     child: Text('9898989898 (Mobile)',style: TextStyle(color: Colors.black),)),
                 ),
                 ListTile(
                   leading: Icon(Entypo.link),
                   title: Text('Website'),
                   subtitle: GestureDetector(
                     onTap: (){
                       launchURL(
                                  'https://apple.com');
                     },
                     child: Text('https://apple.com',style: TextStyle(color: Colors.blue),)),
                 ),
                ],
              ),
            ),
          ),
        ),
                SizedBox(height:10),
                        Text('   Reviews -',style: TextStyle(fontWeight: FontWeight.bold),),
                        ListTile(
                          leading: CircleAvatar(
                            radius: 30.0,
                            backgroundImage:
                                NetworkImage('https://banner2.cleanpng.com/20190502/uah/kisspng-google-logo-search-engine-google-account-5ccb7a0c911102.7649320315568389245942.jpg'),
                                backgroundColor: Colors.transparent,
                                ),
                          title: Text('Google'),
                          subtitle: Text('It is a secured company'),
                          ),
                      ]
                    )    

              ],
            )
          ),
        ),    
      ),
    );
  }
}