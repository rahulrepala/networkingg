//import 'dart:convert';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// import 'package:march/ui/select.dart';
// import 'package:path/path.dart' as Path;
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:networkingg/dashboard/home.dart';
import 'package:networkingg/utils/constants.dart';
// import 'package:http/http.dart' as http;
// import 'package:march/utils/database_helper.dart';
// import 'package:march/models/user.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class BusinessRegister extends StatefulWidget {
  @override
  _BusinessRegisterState createState() => _BusinessRegisterState();
}



class _BusinessRegisterState extends State<BusinessRegister> {
  final GlobalKey<ScaffoldState> _sk = GlobalKey<ScaffoldState>();

  String phone = "";
  String name = "";
  String desc = "";
  String uid = "";
  String email = "";
  String industry="Industry Type";
  var now = new DateTime.now();
  String weblink = "";
  List<String> types=[
'Industry Type',
'Aerospace Industry',
'Agriculture industry',
'Computer Industry',
'Construction Industry',
'Education Industry',
'Electronics Industry',
'Energy Industry',
'Entertainment Industry',
'Food Industry',
'Healthcare Industry',
'Hospitality Industry',
'Manufacturing Industry',
'Mining Industry',
'Music Industry',
'News Media Industry',
'Pharmaceutical Industry',
'Telecommunication Industry',
'Transport Industry',
'World Wide Web Industry',
'Other'
];
  

  File _image;
  String _uploadedFileURL;

  Future _loadFromGallery() async {
    final picker=ImagePicker();
    final _galleryImage = await picker.getImage(source: ImageSource.gallery,maxHeight: 1080,maxWidth:1080);

    setState(() {
      _image = File(_galleryImage.path);
    });
  }

  Future _captureImage() async {
    final picker=ImagePicker();
    final _capturedImage = await picker.getImage(source: ImageSource.camera,maxHeight: 1080,maxWidth:1080);

    setState(() {
      _image = File(_capturedImage.path);
    });
  }


  var _controllername = TextEditingController();
  var _controllerph = TextEditingController();
  var _controlleremail = TextEditingController();

  String _value = '';

  Color nameColor, emailColor, phoneColor, linkColor, descColor;
  Color c = Colors.grey[100];
  Color x = Colors.grey;
  Color nc, ec, phc, lc, dc;

  @override
  void initState() {
   // FirebaseAuth.instance.currentUser().then((val) {
      setState(() {
      //  uid = val.uid;
        descColor = c;
        linkColor = c;
        nameColor = c;
        emailColor = c;
        phoneColor = c;
     //   industryColor=c;
        nc = c;
        ec = c;
        phc = c;
        lc = c;
        dc = c;
      //  ic=c;
        // if ((val.email != "" && val.email != null) &&
        //     (val.displayName != "" && val.displayName != null)) {
        //   email = val.email;
        //   name = val.displayName;
        //   emailColor = Colors.white;
        //   nameColor = Colors.white;
        //   ec = x;
        //   nc = x;
        // }
        // if (val.phoneNumber != "" && val.phoneNumber != null) {
        //   phone = val.phoneNumber;
        //   phoneColor = Colors.white;
        //   phc = x;
        // }
        _controlleremail.text = email;
        _controllername.text = name;
        _controllerph.text = phone;
      });
  //  });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    Widget showImage() {
      if (_image != null) {
        return new Container(
            width: size.width/4,
            height: size.width/4,
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                image: new FileImage(_image),
                fit: BoxFit.cover,
              ),
            ));
      } else {
        return new Container(
          height: size.width/4,
          width: size.width/4,
          margin:
              const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              border: Border.all(color: Constants.kSecondary, width: 2)),
          child: Icon(Feather.camera, size: 30, color:  Constants.kSecondary,),
        );
      }
    }

    return Scaffold(
      key: _sk,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Business Profile',
            style: TextStyle(fontWeight: FontWeight.w600, letterSpacing: 0,color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: GestureDetector(
                  onTap: () {
                    _showDialog();
                  },
                  child: showImage(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                    child: Text(
                  "Upload Logo",
                  style: TextStyle(fontSize: 14),
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 0),
                child: FocusScope(
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        nameColor = Colors.white;
                        nc = x;
                      });
                    },
                    child: TextFormField(
                      controller: _controllername,
                      maxLines: 1,
                      textCapitalization: TextCapitalization.words,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
                          filled: true,
                          fillColor: nameColor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: nc != null ? nc : c, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          border: OutlineInputBorder(),
                          hintText: "Business Name",
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 16.0)),
                      onChanged: (String value) {
                        try {
                          name = value;
                        } catch (exception) {
                          name = "";
                        }
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 0),
                child: FocusScope(
                  onFocusChange: (focus) {
                    setState(() {
                      emailColor = Colors.white;
                      ec = x;
                    });
                  },
                  child: TextFormField(
                    maxLines: 1,
                    controller: _controlleremail,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
                        filled: true,
                        fillColor: emailColor,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: ec != null ? ec : c, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        border: OutlineInputBorder(),
                        hintText: "Email",
                        hintStyle:
                            TextStyle(color: Colors.black26, fontSize: 16.0)),
                    onChanged: (String value) {
                      try {
                        email = value;
                      } catch (exception) {
                        email = "";
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 15),
                child: FocusScope(
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        phoneColor = Colors.white;
                        phc = x;
                      });
                    },
                    child: TextFormField(
                      maxLines: 1,
                      controller: _controllerph,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
                          filled: true,
                          fillColor: phoneColor,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: phc != null ? phc : c, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          border: OutlineInputBorder(),
                          hintText: "Phone Number",
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 16.0)),
                      onChanged: (String value) {
                        try {
                          phone = value;
                        } catch (exception) {
                          phone = "";
                        }
                      },
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 15),
              //   child: FocusScope(
              //     child: Focus(
              //       onFocusChange: (focus) {
              //         setState(() {
              //           industryColor = Colors.white;
              //           ic = x;
              //         });
              //       },
              //       child: TextField(
              //         maxLines: 1,
              //         textCapitalization: TextCapitalization.sentences,
              //         style: TextStyle(
              //             fontSize: 16,
              //             color: Colors.black,
              //             fontWeight: FontWeight.w400),
              //         decoration: InputDecoration(
              //             contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
              //             filled: true,
              //             fillColor: linkColor,
              //             hintText: "Industry Type",
              //             enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(
              //                   color: ic != null ? ic : c, width: 1.0),
              //               borderRadius:
              //                   BorderRadius.all(Radius.circular(10.0)),
              //             ),
              //             border: OutlineInputBorder(),
              //             hintStyle:
              //                 TextStyle(color: Colors.black26, fontSize: 16.0)),
              //         onChanged: (String value) {
              //           try {
              //             industry = value;
              //           } catch (exception) {
              //             industry = "";
              //           }
              //         },
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 15),
                child: FocusScope(
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        linkColor = Colors.white;
                        lc = x;
                      });
                    },
                    child: TextField(
                      maxLines: 1,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
                          filled: true,
                          fillColor: linkColor,
                          hintText: "Website Link",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: lc != null ? lc : c, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          border: OutlineInputBorder(),
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 16.0)),
                      onChanged: (String value) {
                        try {
                          weblink = value;
                        } catch (exception) {
                          weblink = "";
                        }
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0),
                child: FocusScope(
                  child: Focus(
                    onFocusChange: (focus) {
                      setState(() {
                        descColor = Colors.white;
                        dc = x;
                      });
                    },
                    child: TextField(
                      maxLines: 3,
                      textInputAction: TextInputAction.done,
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(15,10,10,10),
                          fillColor: descColor,
                          filled: true,
                          hintText: "Tell us something about your business",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: dc != null ? dc : c, width: 1.0),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          border: OutlineInputBorder(),
                          hintStyle:
                              TextStyle(color: Colors.black26, fontSize: 16.0)),
                      onChanged: (String value) {
                        try {
                         desc = value;
                        } catch (exception) {
                          desc = "";
                        }
                      },
                    ),
                  ),
                ),
              ),
           
             Padding(
               padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10),
               child: DropdownButtonHideUnderline(
                  child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                             border: Border.all(color:c),
                            color: c,
                            borderRadius: BorderRadius.all(Radius.circular(8))
                          ),         
                 child: Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Center(
                   child: DropdownButton<String>(
                     isExpanded: true,
                     value: industry,
                     items: types.map((String value) {
                      return new DropdownMenuItem<String>(
                                      value: value,
                                     child: new Text(value),
                               );
                            }).toList(),
                      onChanged: (String value) {
                         setState(() {
                          industry = value;
                          });
                         },
                      ),
                     ),
                    ),
                   ),
                  ),
             ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 20),
                    child: FlatButton(
                        child: Text(
                          'NEXT',
                          style: TextStyle(color: Constants.kPrimary,fontWeight: FontWeight.normal),
                        ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                             color: Constants.kPrimary,
                             width: 1,
                             style: BorderStyle.solid
                           ), borderRadius: BorderRadius.circular(15)),
                        padding: const EdgeInsets.all(15),
                      //  color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () async {

                          Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                    (Route<dynamic> route) => false);

                          // name = _controllername.text;
                          // email = _controlleremail.text;
                          // phone = _controllerph.text;
                          // dob = _value.substring(8, 10) +
                          //     "-" +
                          //     _value.substring(5, 7) +
                          //     "-" +
                          //     _value.substring(0, 4);
                          // print(dob);
                          // if (_image == null ||
                          //     name == "" ||
                          //     bio == "" ||
                          //     dob == "" ||
                          //     gender == "" ||
                          //     email == "" ||
                          //     phone == "" ||
                          //     profession == "") {
                          //   _sk.currentState.showSnackBar(SnackBar(
                          //     content: Text(
                          //       "All the fields should be filled",
                          //       style: TextStyle(
                          //         fontStyle: FontStyle.italic,
                          //         fontSize: 15,
                          //       ),
                          //     ),
                          //     shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.only(
                          //             topLeft: Radius.circular(12.0),
                          //             topRight: Radius.circular(12.0))),
                          //     duration: Duration(seconds: 3),
                          //     backgroundColor: Colors.lightBlueAccent,
                          //   ));
                          // } else {
                          //   _onLoading();

                          //   StorageReference storageReference =
                          //       FirebaseStorage.instance.ref().child(
                          //           'profile/${Path.basename(_image.path)}}');
                          //   StorageUploadTask uploadTask =
                          //       storageReference.putFile(_image);
                          //   await uploadTask.onComplete;
                          //   print('File Uploaded');
                          //   storageReference
                          //       .getDownloadURL()
                          //       .then((fileURL) async {
                          //     _uploadedFileURL = fileURL;
                          //     var url = 'https://march.lbits.co/api/worker.php';
                          //     var resp = await http.post(
                          //       url,
                          //       headers: {
                          //         'Content-Type': 'application/json',
                          //       },
                          //       body: json.encode(<String, dynamic>{
                          //         'serviceName': "generatetoken",
                          //         'work': "add user",
                          //         'uid': uid,
                          //         'userName': name,
                          //         'userBio': bio,
                          //         'email': email,
                          //         'dob': dob,
                          //         'gender': gender,
                          //         'profession': profession,
                          //         'userPic': fileURL,
                          //         'phoneNumber': phone,
                          //       }),
                          //     );

                          //     print(profession + " " + fileURL);
                          //     // print(resp.body.toString());

                          //     var result = json.decode(resp.body);
                          //     if (result['response'] == 200) {
                          //       print("This is json decoded result: $result");
                          //       var db = new DataBaseHelper();
                          //       int savedUser = await db.saveUser(new User(
                          //           uid,
                          //           name,
                          //           bio,
                          //           email,
                          //           dob,
                          //           gender,
                          //           profession,
                          //           _uploadedFileURL,
                          //           phone));

                          //       SharedPreferences prefs =
                          //           await SharedPreferences.getInstance();
                          //       prefs.setString(
                          //           'token', result['result']['token']);
                          //       prefs.setString(
                          //           'id', result['result']['user_info']['id']);
                          //       prefs.setString('age',
                          //           result['result']['user_info']['age']);
                          //       print("user saved :$savedUser");

                          //       Navigator.pushAndRemoveUntil(
                          //           context,
                          //           MaterialPageRoute(
                          //               builder: (context) => Select()),
                          //           (Route<dynamic> route) => false);
                          //     } else {
                          //       Navigator.pop(context);
                          //       _sk.currentState.showSnackBar(SnackBar(
                          //         content: Text(
                          //           result['response'] +
                          //               result['result'].toString(),
                          //           style: TextStyle(
                          //             fontStyle: FontStyle.italic,
                          //             fontSize: 15,
                          //           ),
                          //         ),
                          //         shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.only(
                          //                 topLeft: Radius.circular(12.0),
                          //                 topRight: Radius.circular(12.0))),
                          //         duration: Duration(seconds: 3),
                          //         backgroundColor: Colors.lightBlueAccent,
                          //       ));
                          //     }
                          //   });
                          // }
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Text(
                      "Choose Image",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    )),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Center(
                        child: SizedBox(
                          width: 150.0,
                          child: RaisedButton(
                            onPressed: () {
                              _captureImage();
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Camera",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            color: const Color(0xffFFBF46),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: SizedBox(
                          width: 150.0,
                          child: RaisedButton(
                            onPressed: () {
                              _loadFromGallery();
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Gallery",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            color: const Color(0xffFFBF46),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }


  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              "assets/images/animat-rocket-color.gif",
              height: 125.0,
              width: 125.0,
            ),
          ),
        );
      },
    );
  }
}
