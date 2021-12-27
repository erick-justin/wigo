

import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class ForgetPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForgetPassword();
  }

}

class ForgetPassword extends State<ForgetPage>{
  double verifyOpacity = 0.0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
          body: thePage(),
     );
  }


  Widget thePage(){
       return Padding(
         padding: const EdgeInsets.all(32.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
               children: [

                 SizedBox(
                    height: SizeConfig.screenHeight*0.25,
                 ),
                   Text("Password Recovery",
                     textAlign: TextAlign.left,
                     style: TextStyle(
                      color: appPrimaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w500
                   ),),

                 Text("Enter Your Phone Number For Password Recovery",style: TextStyle(
                     color: appPrimaryColor.withOpacity(0.7),
                     fontSize: 20,
                     fontWeight: FontWeight.w500
                 ),),
                 SizedBox(
                   height: SizeConfig.screenHeight*0.05,
                 ),

                 Align(
                   alignment: Alignment.center,
                   child:   AnimatedOpacity
                     (duration: Duration(milliseconds: 500),
                     opacity: 1,
                     child: Container(
                       child: Padding(padding: EdgeInsets.only(
                           left: 24, top: 16, right: 24, bottom: 0),
                         child: new TextField(
                           onChanged: (text) {
                             //  email =  text;
                               if(text.length ==10){
                                   setState(() {
                                       verifyOpacity = 1.0;
                                   });
                               }else{
                                  setState(() {
                                    verifyOpacity = 0.0;
                                  });
                               }
                           },
                           maxLength: 10,
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
                                     color: appSecondaryColorWithOpacity, width: 2.0),
                               ),
                               focusedBorder: new OutlineInputBorder(
                                 borderRadius: new BorderRadius.circular(
                                     25.0),
                                 borderSide: new BorderSide(
                                     color:appSecondaryColorWithOpacity, width: 2.0),
                               ),
                               fillColor: appSecondaryColorWithOpacity,
                               filled: true
                           ),

                           keyboardType: TextInputType.phone,
                           style: new TextStyle(
                               fontFamily: "Poppins",
                               color: appPrimaryColor
                           ),
                         ),
                       ),),),
                 ),

                 SizedBox(
                   height: SizeConfig.screenHeight*0.05,
                 ),

           AnimatedOpacity(
             opacity:verifyOpacity ,
             duration: Duration(seconds: 1),
             child: Align(
               alignment: Alignment.center,
               child: Container(
                 width: 150,
                 child: RaisedButton(
                  //hoverColor: appSecondaryColor,
                   padding: const EdgeInsets.all(16.0),
                   textColor: Colors.white,
                   color: appPrimaryColor,
                   shape: new RoundedRectangleBorder(
                       borderRadius: new BorderRadius.circular(25.0)),


                   child: Icon(
                    Icons.check,
                    color: Colors.white,),
                   onPressed: () {
                   //  getServerResponse(loginJson(), 200, true);
                     /// Navigator.push(context, MaterialPageRoute(builder: (mContext)=>HomePage()));

                     //   MaterialPageRoute(builder: (mContext) => ShopPage()));
                   },),
               ),
             ),
           )

               ],
         ),
       );
  }

}