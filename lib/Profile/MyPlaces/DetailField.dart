


import 'package:com/utilities/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailField extends StatelessWidget{
  String title;
  String value;
  TextEditingController controller = TextEditingController();

  DetailField(this.title, this.value);



  @override
  Widget build(BuildContext context) {

    controller.text = value;
    // TODO: implement build
   return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Text(
        title,
              style: new TextStyle(
                  fontFamily: "Poppins",
                  color:appPrimaryColor,
                 fontSize: 16
              ),
            ),

           TextField(
             controller: controller,
             onChanged: (text) {
               //phoneNumber = text;
               //password = text;
             },

             decoration: new InputDecoration(



                 enabledBorder: new UnderlineInputBorder(

                   borderSide: new BorderSide(
                       color: Colors.blueGrey, width: 0.5),
                 ),
                 focusedBorder: new UnderlineInputBorder(

                   borderSide: new BorderSide(
                       color:Colors.black, width: 2.0),
                 ),


             ),

             keyboardType: TextInputType.text,
             style: new TextStyle(
                 fontFamily: "Poppins",
                 color: Colors.black,
                 fontSize: 18,
               fontWeight:  FontWeight.w700
             ),
           ),

           SizedBox(
             height: 25,
           )


         ],
      ),
   );

}}