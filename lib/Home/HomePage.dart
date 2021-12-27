

import 'package:com/Home/explorePage.dart';
import 'package:com/Profile/profile.dart';
import 'package:com/utilities/colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return HomeState();
  }

}


class HomeState extends State<HomePage>with TickerProviderStateMixin {
  TabController  controller;


  @override
  void initState() {
    // TODO: implement initState
    controller = TabController(vsync: this,length: 3);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(

     bottomNavigationBar: CurvedNavigationBar(
       backgroundColor: Colors.white,
       buttonBackgroundColor: appSecondaryColor,
       
       color: appPrimaryColor,
       items: <Widget>[
         Icon(Icons.search, color:Colors.white,size: 30),
         Icon(Icons.folder, color:Colors.white,size: 30),
         Icon(Icons.person, color:Colors.white,size: 30),
       ],
       onTap: (index) {
          controller.animateTo(index);
       },
     ),
     body: theBody()
   );




  }

  Widget theBody(){
    return TabBarView(
      controller: controller,
      children: [
        ExplorePage(),
        Container(

        ),
      ProfilePage()

      ],
    );
  }

}

