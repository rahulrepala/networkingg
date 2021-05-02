import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/utils/urllauncher.dart';

class ViewProfile extends StatefulWidget {
  @override
  _ViewProfileState createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFCFE),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Apple",style: TextStyle(color: Colors.black),),
          centerTitle: true,
          actions: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: (){
                var url= whatsappURL('9898989898', 'hello');
                launchURL(url);
               },
               child: Icon(FontAwesome.whatsapp,color: Colors.green,)),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: (){
                  final Uri params = Uri(
                       scheme: 'mailto',
                       path: 'apple@mail.com',
                       query: 'subject=App Feedback&body=App Version 3.23', //add subject and body here
                     );

                 var url = params.toString();  
                 launchURL(url);
               },
               child: Icon(MaterialCommunityIcons.gmail,color: Colors.red,)),
           )  
          ],
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Icon(Icons.close),
            ),
          ),
        ),
       body: SingleChildScrollView(
         child: Container(
           child:Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height*0.2,
                      child: Image.network('https://cdn3.iconfinder.com/data/icons/social-media-logos-glyph/2048/5315_-_Apple-512.png')),
                    Text('Apple'),
                    SizedBox(height:20),
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
                    SizedBox(height:10),
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
                ),
           ),
         ),
       ), 
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add,),
      onPressed: (){
        showAlertDialog(context);     
      }),
    );
  }

  showAlertDialog(BuildContext context) {

  Widget okButton = FlatButton(
    child: Text("Ok",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
    onPressed: () {
            Navigator.pop(context);
     },
  );

  Widget cancelButton = FlatButton(
    child: Text("Cancel",style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal),),
    onPressed: () {
      Navigator.pop(context);
     },
  );

  AlertDialog alert = AlertDialog(
    title: Text("Write Review"),
    content: TextField(
      maxLines: 1,
     decoration: new InputDecoration(
         enabledBorder: const OutlineInputBorder(
         borderSide: const BorderSide(color: Colors.black26, width: 0.0),
      ),
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(4),
        ),
      ),)
    ),
    actions: [
      okButton,
      cancelButton
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}