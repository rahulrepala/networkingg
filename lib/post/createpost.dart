import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:image_picker/image_picker.dart';
class CreatePost extends StatefulWidget {
  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {

   File _image;

   Future _loadFromGallery() async {
    final picker=ImagePicker();
    final _galleryImage = await picker.getImage(source: ImageSource.gallery,maxHeight: 1080,maxWidth:1080);

    setState(() {
      _image = File(_galleryImage.path);
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold( 
      backgroundColor: Color(0xFFFBFCFE),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Share",style: TextStyle(color: Colors.black),),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8,20,12,8),
              child: InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text('Post',style: TextStyle(color: Colors.black),)),
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
                        
                     TextField(
                          maxLines: 4,
                          decoration: new InputDecoration(
                          hintText: 'Share Your Thoughts . Add photos',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black26, width: 0.0),
                            ),
                          border: new OutlineInputBorder(
                               borderRadius: const BorderRadius.all(
                                       const Radius.circular(4),
                                 ),
                           ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          _loadFromGallery();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8)
                            ),
                            border: Border.all(color:Colors.grey[400])
                          ),
                          child: Row(
                            children: [
                              IconButton(
                              icon: Icon(Feather.camera),
                              onPressed: null,
                            ),
                            Text('Upload Photo'),
                            Expanded(child: Container()),
                             IconButton(
                               onPressed: null,
                               icon: Icon(Icons.add),)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15,),
                      if(_image!=null)
                         Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            height: MediaQuery.of(context).size.height/4,
                               decoration: new BoxDecoration(
                               borderRadius: BorderRadius.circular(15.0),
                               shape: BoxShape.rectangle,
                                   image: new DecorationImage(
                                       image: new FileImage(_image),
                                       fit: BoxFit.cover,
                                    ),
                          )) 
                      
                      
 
                      ]
                    )
                )
            ))
    );
  }
}