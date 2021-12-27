

import 'dart:io';

import 'package:com/Home/PlaceView.dart';
import 'package:com/Intro/signUp2.dart';
import 'package:com/WigoObjects/Place.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'DetailField.dart';

class NewListingPhotoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewListingPhotoState();
  }

}

class NewListingPhotoState extends State<NewListingPhotoPage>{
  List<Place>places = [];
  List<File>images = [];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,

          elevation: 0,
          leading: InkWell(
            onTap: (){
               Navigator.pop(context);
            },
            child: Icon(
               Icons.arrow_back,
              color: appPrimaryColor,
            ),
          ),


        ),
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
                height: SizeConfig.screenHeight*0.01
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
              child: Text(
                "Add Photos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: appPrimaryColor,
                  fontSize: 35,

                ),
              ),
            ),


            Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[

                      InkWell(
                        onTap: (){
                           getImage();
                        },
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: SizeConfig.screenHeight*0.075,
                              width:SizeConfig.screenHeight*0.075,
                              child: Padding(
                                padding: EdgeInsets.all(16),
                                child: Center(
                                  child: Icon(
                                    Icons.photo,
                                    size: 20,
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
                          ),
                        ),
                      ),
                      Expanded(
                         child: Container(
                            child: new GridView.builder(
                                 itemCount: images.length,
                                 gridDelegate:
                                 new SliverGridDelegateWithFixedCrossAxisCount(
                                     crossAxisCount: 2),
                                 itemBuilder: (BuildContext context, int index) {
                                   return Padding(
                                     padding: const EdgeInsets.all(2),
                                     child: Container(
                                       //  color: appSecondaryColor,
                                       height: 100,
                                       child: Image.file(images[index],fit: BoxFit.fitHeight,),

                                     ),
                                   );
                                 })

                         ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:32.0),
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: (){
                             // Navigator.push(context, MaterialPageRoute(builder: (content)=>SignUp2()));
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
                      ),
                    ],
                  ),
                )

            ),


          ],
        ),
      );
  }

  Future getImage() async {
    var Vimage = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      // image = Vimage;
      images.add(Vimage);

    });
    //product_id = id;
    //Navigator.push(context, MaterialPageRoute(builder: (mContext)=>ImagePage()));



  }

}