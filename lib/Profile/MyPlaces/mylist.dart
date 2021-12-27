

import 'package:com/Home/PlaceView.dart';
import 'package:com/Profile/MyPlaces/new_listing.dart';
import 'package:com/WigoObjects/Place.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';

class MyListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  return MyListState();
  }

}

class MyListState extends State<MyListPage>{
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
         backgroundColor: appPrimaryColor,
         elevation: 5,
         title: Text("My List",

          style: TextStyle(color:Colors.white),),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: appPrimaryColor,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewListingPage()));



            // Add your onPressed code here!
          },
          child:
             Icon(Icons.add,color: Colors.white,)

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
             height: SizeConfig.screenHeight*0.01
          ),


          Expanded(
             child:
             Column(
               children: <Widget>[

                 Expanded(
                   child: Container(
                     child:
                       Container(
                         child: new ListView.builder(
                           padding: EdgeInsets.all(8),
                           itemCount: places.length,
                           itemBuilder: (BuildContext context, int index) {
                             return PlaceView(places[index]);
                           },
                         ),
                       )

                       ,





                   ),
                 )
               ],
             )

          )],
      ),
    );
  }

}