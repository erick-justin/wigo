

import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OtpPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return OtpState();
  }

}

class OtpState extends State<OtpPage>{
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
                   Text("Number Verfication",
                     textAlign: TextAlign.left,
                     style: TextStyle(
                      color: appPrimaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w500
                   ),),

                 Text("Enter Code Sent To Number 255xxxxxxxx",style: TextStyle(
                     color: appPrimaryColor.withOpacity(0.7),
                     fontSize: 20,
                     fontWeight: FontWeight.w500
                 ),),
                 SizedBox(
                   height: SizeConfig.screenHeight*0.05,
                 ),

                 Align(
                   alignment: Alignment.center,
                   child: PinCodeTextField(
                     autofocus: true,

                     //controller: controller,
                     // hideCharacter: true,
                     highlight: true,
                     highlightColor: Colors.redAccent,
                     defaultBorderColor: appPrimaryColor,
                     hasTextBorderColor: appSecondaryColor,

                     maxLength: 4,
                     wrapAlignment: WrapAlignment.center,
                     pinBoxRadius:15 ,

                     //hasError: hasError,
                     // maskCharacter: false,

                     onTextChanged: (text) {
                       setState(() {
                         if(text.length != 4){
                           setState(() {
                            // verifyOpacity = 0.0;
                           });
                         }
                        // code = text;
                         //hasError = false;
                       });
                     },
                     onDone: (text) {
                       print("DONE $text");
                       setState(() {
                         verifyOpacity = 1.0;
                       });
                     },
                   ),
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
           ),
                 SizedBox(
                   height: 16,
                 ),

                 InkWell(
                   onTap: (){

                   },
                   child: Align(
                      alignment: Alignment.center,
                     child: Padding(
                        padding: EdgeInsets.all(32),
                        child: Text("Resend Code",style: TextStyle( color: appPrimaryColor,fontSize: 15,fontWeight: FontWeight.w500),)
                     ),
                   ),
                 )

               ],
         ),
       );
  }

}