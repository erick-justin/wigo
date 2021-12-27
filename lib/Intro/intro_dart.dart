import 'dart:async';

import 'package:com/Intro/loginPage.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';

import '../Utilities/colors.dart';



class IntroPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IntroScreenState();
  }

}
BuildContext mContext;
class IntroScreenState extends State<IntroPage> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();


    slides.add(
      new Slide(

        title: "DISCOVER THE BEST",
        description:
        "Find the best properties and places by your location or neighbourhood ",
       // pathImage: "images/photo_eraser.png",
        backgroundColor: appSecondaryColor,
      ),
    );
    slides.add(
      new Slide(
        title: "READY TO MOVE",
        description: "A beautiful day with new view at your new property with your family and loved ones",
       // pathImage: "images/photo_pencil.png",
        backgroundColor: appPrimaryColor),
      )
    ;
    slides.add(
      new Slide(
        title: "LET'S GET TO IT",
        description:
        "Just search and select your favorite property to get started",
       // pathImage: "images/photo_ruler.png",
        backgroundColor: appSecondaryColor,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  Navigator.push(mContext, MaterialPageRoute(builder: (mContext)=>LoginPage()));
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        color: currentSlide.backgroundColor,
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child:Container(
                    width: 200,
              height: 250,
              child:
              Text(""))),
              Container(
                child: Text(
                  currentSlide.title,
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                child: Text(
                  currentSlide.description,
                  style: TextStyle(color: Colors.white,fontSize: 19),
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }


  @override
  Widget build(BuildContext context) {
    mContext = context;
    return new IntroSlider(
      slides: this.slides,
      listCustomTabs: this.renderListCustomTabs(),
      onDonePress: this.onDonePress,
      backgroundColorAllSlides: Colors.white,
    );
  }
}
