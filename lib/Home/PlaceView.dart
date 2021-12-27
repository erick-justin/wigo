


import 'package:carousel_slider/carousel_slider.dart';
import 'package:com/WigoObjects/Place.dart';
import 'package:com/utilities/colors.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PlaceView extends StatefulWidget{
  Place place;

  PlaceView(this.place);

  @override
  State<StatefulWidget> createState() {

    // TODO: implement createState


    return PlaceState();

  }




}

// ignore: must_be_immutable
class PlaceState extends State<PlaceView>{
  Place place;

  @override
  void initState() {
    // TODO: implement initState
    place = widget.place;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return  Padding(
       padding: const EdgeInsets.all(8.0),
       child: Column(
         children: [
           Card(
             elevation: 10,
             shape:   RoundedRectangleBorder(

                 borderRadius: BorderRadius.circular(25.0)),
             child: Container(

               height: SizeConfig.screenHeight*0.24,
               decoration: new BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(25)),
                 color: appPrimaryColor,),

               child: CarouselSlider(

                 options: CarouselOptions(
                   viewportFraction: 1,
                   //autoPlay: true,
                   enableInfiniteScroll: place.images.length>1,
                   autoPlayInterval: Duration(milliseconds: 3000),
                   height: double.infinity,





                 ),
                 items: place.images.map((i) {
                   return Builder(
                     builder: (BuildContext context) {
                       return Container(
                           width: MediaQuery.of(context).size.width,

                           decoration: BoxDecoration(
                               color: Colors.white70,
                             borderRadius: BorderRadius.all(Radius.circular(15))
                                   
                           ),
                           child:ClipRRect(

                           borderRadius: BorderRadius.circular(15.0),
                       child:FittedBox(
                             fit:  BoxFit.cover,
                             child: Image.network(

                               i,

                             ),
                           )
                           ) );
                     },
                   );
                 }).toList(),
               ),

             ),
           ),
           SizedBox(
              height: 16,
           )
           ,
           Container(
               height: SizeConfig.screenHeight*0.15,
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   SizedBox(
                      height: 5,
                   ),
                     Text(
                        "${place.name}",
                       style: TextStyle(
                          color: Colors.black87,
                         fontSize: 22,
                         fontWeight: FontWeight.w500

                       ),

                     ),
                   SizedBox(
                      height: 5,
                   ),
                   Text(
                       "${place.category}: ${place.generalLocation}",
                     style: TextStyle(
                         color: Colors.black87,
                         fontSize: 17,
                         fontWeight: FontWeight.w500

                     ),
                   ),
                   SizedBox(
                     height: 5,
                   ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: appSecondaryColor
                        ),
                         child: Padding(

                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                              "${place.priceRange}",
                             style: TextStyle(
                                color: Colors.white,
                               fontSize: 17,
                                 fontWeight: FontWeight.w500
                             ),

                           ),
                         ),
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top:0.0),
                             child: Text(
                                 "${place.ratings}",
                               style: TextStyle(
                                   color: Colors.black87,
                                   fontSize: 17,
                                   fontWeight: FontWeight.w500

                               ),
                             ),
                           ),
                          Icon(Icons.star,color: appPrimaryColor,size: 20,),
                         ],
                       )
                     ],
                   )



                 ],
              ),
           )

         ],
       ),
     );
  }





}