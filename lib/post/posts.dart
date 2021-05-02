import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/post/createpost.dart';
import 'package:networkingg/post/viewinvestorsprofile.dart';
import 'package:networkingg/profile/viewProfile.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {

  bool fab=true;
  int choose=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(choose==0?"Community":"Investments",style: TextStyle(color: Colors.black),),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:8.0),
              child: IconButton(icon: Icon(AntDesign.filter,color: Colors.grey,),onPressed: (){

              var bottomSheetController = showBottomSheet(
                    context: context,
                    builder: (context) => Container(
                                 decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
            BoxShadow(
                blurRadius: 10, color: Colors.grey[300], spreadRadius: 5)
        ]),
                                margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
                              height: 140,
                              width: MediaQuery.of(context).size.width,
                               child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
            SizedBox(height: 15,),
          InkWell(
            onTap: (){
              choose=1;
              Navigator.pop(context);
              setState((){});
            },
                      child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     boxShadow: [
    //         BoxShadow(
    //             blurRadius: 10, color: Colors.grey[300], spreadRadius: 5)
    //     ]),
    child: Column(
      children: [
        SizedBox(height: 5,),
        Expanded(child: Text('Investors'))
      ],
    ),
 ),
          ),

         SizedBox(height: 10,),
          InkWell(
            onTap: (){
              choose=0;
              Navigator.pop(context);
              setState((){});
            },
                      child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     boxShadow: [
    //         BoxShadow(
    //             blurRadius: 10, color: Colors.grey[300], spreadRadius: 5)
    //     ]),
    child: Column(
      children: [
        SizedBox(height: 5,),
        Expanded(child: Text('Community'))
      ],
    ),
 ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
                      child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.all(Radius.circular(8)),
    //     boxShadow: [
    //         BoxShadow(
    //             blurRadius: 10, color: Colors.grey[300], spreadRadius: 5)
    //     ]),
    child: Column(
      children: [
        SizedBox(height: 5,),
        Expanded(child: Text('Close'))
      ],
    ),
 ),
          ),
                                            ]
                                       ),
                             ));
                fab=false;
                setState(() {});
                bottomSheetController.closed.then((value) {
                  fab=true;
                  setState((){});
                });

              },),
            )
          ],
        ),
      body: list(context),  
    floatingActionButton:fab? FloatingActionButton(
      child: Icon(AntDesign.addfile,),
      onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CreatePost()));
      }):Container(),
    );
  }

  Widget list(BuildContext context){
    Size size = MediaQuery.of(context).size;
    if(choose==0){
      return ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context,int index){
             return GestureDetector(
               onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>ViewProfile()));
               },
                child: SizedBox(
                 height: 180,
                 width: size.width*0.95,
                 child: Card(
                    color: Colors.white,
                    shadowColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                         
                         ListTile(
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                              NetworkImage('https://banner2.cleanpng.com/20190502/uah/kisspng-google-logo-search-engine-google-account-5ccb7a0c911102.7649320315568389245942.jpg'),
                              backgroundColor: Colors.transparent,
                              ),
                        title: Text('Google'),
                        subtitle: Text('Jan 28 2021 3:30 PM'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('We have openings at Hyderabad . interested candidate can mail to gmail@gmail.com'),
                        ),
                        Container(
                          height: 1,
                          color: Colors.grey[300],
                          width: size.width*0.85,
                        ), 
                        Padding(
                          padding: const EdgeInsets.only(left:16.0),
                          child: Row(
                            children: [
                              Icon(AntDesign.like2),
                              Text('0'),
                              SizedBox(width: 4,),
                              Icon(EvilIcons.comment),
                              Text('0'),
                            ],
                          ),
                        )          
                                ],
                         ),
                      ),
                 ),
               ),
             );
      },);
    }else{
      return ListView.builder(
        physics: AlwaysScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context,int index){
             return GestureDetector(
               onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>ViewInvestorsProfile()));
               },
                child: SizedBox(
                 height: 180,
                 width: size.width*0.95,
                 child: Card(
                    color: Colors.white,
                    shadowColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                         
                         ListTile(
                        leading: CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                              NetworkImage('https://images.indianexpress.com/2021/01/myntra.png'),
                              backgroundColor: Colors.transparent,
                              ),
                        title: Text('Myntra',style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top:3.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                           //   Text('Ecommerce Industry'),
                              Row(
                                  children: [
                                    Text("Investment :",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("20 lakh"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Stake :",style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("20%"),
                                  ],
                                ),

                            ],
                          ),
                        ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left:8.0,right: 8.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Row(
                        //         children: [
                        //           Text("Investment :",style: TextStyle(fontWeight: FontWeight.bold),),
                        //           Text("20 lakh"),
                        //         ],
                        //       ),
                        //       Row(
                        //         children: [
                        //           Text("Stake :",style: TextStyle(fontWeight: FontWeight.bold),),
                        //           Text("20%"),
                        //         ],
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Myntra is a one stop shop for all your fashion and lifestyle needs. '),
                        ),
                        // Container(
                        //   height: 1,
                        //   color: Colors.grey[300],
                        //   width: size.width*0.85,
                        // ), 
                        // Padding(
                        //   padding: const EdgeInsets.only(left:16.0),
                        //   child: Row(
                        //     children: [
                        //       Icon(AntDesign.like2),
                        //       Text('0'),
                        //       SizedBox(width: 4,),
                        //       Icon(EvilIcons.comment),
                        //       Text('0'),
                        //     ],
                        //   ),
                        // )          
                                ],
                         ),
                      ),
                 ),
               ),
             );
      },);
    }
  }

}


