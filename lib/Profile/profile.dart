

import 'package:com/Intro/loginPage.dart';
import 'package:com/Intro/signUp2.dart';
import 'package:com/Profile/MyPlaces/mylist.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return ProfilePageState();
  }

}


class ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
        body: theScreen());
  }


  Widget theScreen(){
       return Stack(
          children: [
            Positioned(
              top: SizeConfig.screenHeight*0.4,
              right: 0,
              left: 0,
              height: SizeConfig.screenHeight*0.6,
              child: Container(
                color:Colors.white,
                child: Column(

                   children: [
                     InkWell(

                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 16),
                         child: Row(
                           children: [
                             Container(
                               child: Padding(
                                 padding: EdgeInsets.all(16),
                                 child: Center(
                                   child: Icon(
                                     Icons.hotel,
                                     size: 30,
                                     color: appPrimaryColor,
                                   ),
                                 ),
                               ),
                               decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.all(Radius.circular(15)),
                                   border: Border.all(
                                       color: appPrimaryColor, width: 1)),
                             ),
                             Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Text(
                                 "My Places",
                                 style: TextStyle(color: appPrimaryColor, fontSize: 15),
                               ),
                             )
                           ],
                         ),
                       ),
                       onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyListPage()));
                       },
                     )
                   ],
                ),

              ),
            ),

            Positioned(
               top: 0,
              right: 0,
              left: 0,
              height: SizeConfig.screenHeight*0.4,
              child: Container(

                decoration:  BoxDecoration(
                    color: appPrimaryColor,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),bottomLeft: Radius.circular(35))
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,


                  children: [



                    SizedBox(
                      height: SizeConfig.screenHeight*0.1,
                    ),

                    Expanded(
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [






                        ],
                      ),

                    ),





                  ],
                ),

              ),
            ),



          ],
       );
  }

}