import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:networkingg/dashboard/findProfiles.dart';
import 'package:networkingg/post/posts.dart';
import 'package:networkingg/profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  List<Widget> tabs= [
       FindProfiles(),
       Posts(),
       Profile(),
       
    ];
  int _currentindex = 0;

  
  Widget bottomNavBar() {
    Size size=MediaQuery.of(context).size;
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        backgroundColor: Color(0xFFffffff),
        currentIndex: _currentindex,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Ionicons.ios_people,
                size: size.height/28
              ),
              label: "Find Profiles"),
          //   new BottomNavigationBarItem(icon: new Icon(Icons.date_range,size: 30,),title: Text("")),
          new BottomNavigationBarItem(
              icon: Stack(
                children: <Widget>[
                  // newMsgs
                  //     ?
                      //  Padding(
                      //     padding: const EdgeInsets.fromLTRB(15.0, 0, 8, 8),
                      //     child: Container(
                      //       width: 8,
                      //       height: 8,
                      //       decoration: BoxDecoration(
                      //         borderRadius:
                      //             BorderRadius.all(Radius.circular(8.0)),
                      //         color: Colors.red,
                      //       ),
                      //     ),
                      //   )
                      // : 
                      Container(
                          width: 0,
                          height: 0,
                        ),
                  new Icon(
                    FontAwesome.send,
                    size: size.height/34,
                    //20
                  )
                ],
              ),
              label: "Posts"),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                size: size.height/28
              ),
              label: "Profile"),
        ],
        showUnselectedLabels: false,
        unselectedItemColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: (index) {
          setState(() {
            _currentindex = index;
            // title = t[_currentindex];
            // newMsgs = (index == 1) ? false : newMsgs;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: (_currentindex == 2 || _currentindex == 0) ? null : appBar(),
      body: IndexedStack(
        index: _currentindex,
        children: tabs,
      ),
      bottomNavigationBar: Container(
          height: 65,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _currentindex == 0
                  ? Align(
                      alignment: FractionalOffset(0.1, 0.6),
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        width: 60,
                        height: 3,
                      ),
                    )
                  : _currentindex == 2
                      ? Align(
                          alignment: FractionalOffset(0.9, 0.6),
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            width: 60,
                            height: 3,
                          ),
                        )
                      : Container(
                          color: Theme.of(context).primaryColor,
                          width: 60,
                          height: 3,
                        ),
              bottomNavBar()
            ],
          )),
    );
  }
}