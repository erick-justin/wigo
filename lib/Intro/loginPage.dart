

import 'package:com/Home/HomePage.dart';
import 'package:com/Intro/forgetPasswordPage.dart';
import 'package:com/Intro/signUp1.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return LoginState();
  }

}


class LoginState extends State<LoginPage>{
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
              top: SizeConfig.screenHeight*0.65,
              right: 0,
              left: 0,
              height: SizeConfig.screenHeight*0.4,
              child: Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     InkWell(
                       onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (content)=>SignUp1()));
              },
                       child: Padding(
                         padding: const EdgeInsets.all(16.0),
                         child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text("REGISTER",
                             style: TextStyle(  fontSize: 17,
                                 fontWeight: FontWeight.bold,
                               color: appPrimaryColor
                             ),),
                         ),
                       ),
                     )
                   ],
                ),

              ),
            ),

            Positioned(
               top: 0,
              right: 0,
              left: 0,
              height: SizeConfig.screenHeight*0.7,
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

                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Text("LOGIN",style: TextStyle( color: Colors.white,fontSize: 35,fontWeight: FontWeight.w500),),
                            ),
                          ),
                          AnimatedOpacity
                            (duration: Duration(milliseconds: 500),
                            opacity: 1,
                            child: Container(
                              child: Padding(padding: EdgeInsets.only(
                                  left: 24, top: 16, right: 24, bottom: 0),
                                child: new TextField(
                                  onChanged: (text) {
                                  //  email =  text;
                                  },
                                  //  obscureText: true,
                                  decoration: new InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.phone, color: appPrimaryColor,),
                                      labelText: "Phone Number",
                                      labelStyle: TextStyle(color:appPrimaryColor),
                                      enabledBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(
                                            20.0),
                                        borderSide: new BorderSide(
                                            color: appPrimaryColor, width: 2.0),
                                      ),
                                      focusedBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(
                                            25.0),
                                        borderSide: new BorderSide(
                                            color:appPrimaryColor, width: 2.0),
                                      ),
                                      fillColor: appSecondaryColorWithOpacity,
                                      filled: true
                                  ),

                                  keyboardType: TextInputType.text,
                                  style: new TextStyle(
                                      fontFamily: "Poppins",
                                      color: appPrimaryColor
                                  ),
                                ),
                              ),),),
                          AnimatedOpacity
                            (duration: Duration(milliseconds: 500),
                            opacity: 1,
                            child: Container(
                              child: Padding(padding: EdgeInsets.only(
                                  left: 24, top: 16, right: 24, bottom: 0),
                                child: new TextField(
                                  onChanged: (text) {
                                    //phoneNumber = text;
                                   // password = text;
                                  },
                                  obscureText: true,
                                  decoration: new InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.lock, color: appPrimaryColor,),
                                      labelText: "Password",
                                      labelStyle: TextStyle(color:appPrimaryColor),
                                      enabledBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(
                                            25.0),
                                        borderSide: new BorderSide(
                                            color: appPrimaryColor, width: 2.0),
                                      ),
                                      focusedBorder: new OutlineInputBorder(
                                        borderRadius: new BorderRadius.circular(
                                            25.0),
                                        borderSide: new BorderSide(
                                            color:appPrimaryColor, width: 2.0),
                                      ),
                                      fillColor: appSecondaryColorWithOpacity,
                                      filled: true
                                  ),

                                  keyboardType: TextInputType.text,
                                  style: new TextStyle(
                                      fontFamily: "Poppins",
                                      color: appPrimaryColor
                                  ),
                                ),
                              ),),),
                          InkWell(
                            onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPage()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(top:32.0, left: 32),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text("Forgot Password?",
                                  style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold
                                  ),),

                              ),
                            ),
                          )




                        ],
                      ),

                    ),





                  ],
                ),

              ),
            ),

            Positioned(
               top: SizeConfig.screenHeight*0.66,
               right: 0,
               left: 0,

              child: Align(
                alignment: Alignment.center,
                 child: InkWell(
                   onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (content)=>HomePage()));
                   },
                   child: Container(

                     decoration: BoxDecoration(
                       color: appSecondaryColor,
                       borderRadius: BorderRadius.all(Radius.circular(20))
                     ),
                     height: SizeConfig.screenHeight*0.075,
                     width:SizeConfig.screenHeight*0.075,
                     child: Center(
                        child: Icon(Icons.arrow_forward,color: Colors.white,size: 30,),
                     ),
                   ),
                 ),
              ),
            )

          ],
       );
  }

}