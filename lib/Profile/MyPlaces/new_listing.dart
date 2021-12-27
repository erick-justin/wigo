

import 'package:com/Home/PlaceView.dart';
import 'package:com/Intro/signUp2.dart';
import 'package:com/WigoObjects/Place.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';

import 'DetailField.dart';
import 'new_listing_photos.dart';

class NewListingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NewListingState();
  }

}

class NewListingState extends State<NewListingPage>{
  List<Place>places = [];

  @override
  Widget build(BuildContext context) {
    var images =    ['https://a0.muscache.com/im/pictures/99f20bc3-6d92-4fd1-8fbd-4724905f47b9.jpg?im_w=960',
      "https://a0.muscache.com/im/pictures/d4e2399f-a5ef-489d-9526-167b0866a92d.jpg?im_w=720",
      "https://a0.muscache.com/im/pictures/9329adab-2628-4f77-b165-33db00f956bd.jpg?im_w=720",
      "https://a0.muscache.com/im/pictures/8a7066c1-be88-411a-b395-c9a2865e7f67.jpg?im_w=720",
      "https://a0.muscache.com/im/pictures/57eb0e09-8cba-44d4-a4f7-f9610eef7155.jpg?im_w=1200"];
    places.add(new Place("House", "Amazon City House","Dare es salaam", "250K", 4.5, images));
    places.add(new Place("House", "Kigamboni Beach","Dare es salaam", "250K", 4.5, images));
    places.add(new Place("House", "Serengeti cottage","Arusha", "123K-600k", 4.5, images));
    places.add(new Place("House", "Amazon City House","Dare es salaam", "250K", 4.5, images));
    places.add(new Place("House", "Amazon City House","Dare es salaam", "250K", 4.5, images));
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
                "New Listing",
                style: TextStyle(
                  color: appPrimaryColor,
                  fontSize: 35,

                ),
              ),
            ),


            Expanded(
                child:
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    children: <Widget>[

                      Container(

                      child:  DetailField(
                          "Listing Name","e.g Marion House"
                        )











                      ),
                      Container(

                          child:  DetailField(
                              "Listing Category","e.g House"
                          )











                      ),
                      Container(

                          child:  DetailField(
                              "Price Range","e.g 100K-250K"
                          )











                      ),
                      Container(
                      // color: Colors.redAccent,
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child:
                              Container(

                                  child:  DetailField(
                                      "Listing Locationy","e.g Sinza B,Dar es salaam"
                                  )











                              ),
                            ),

                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: Center(
                                      child: Icon(
                                        Icons.location_on,
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
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (content)=>NewListingPhotoPage()));
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
                    ],
                  ),
                )

            ),


          ],
        ),
      );
  }

}