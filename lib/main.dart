import 'dart:async';
import 'dart:convert';


import 'package:com/utilities/fade_transition.dart';
import 'package:com/utilities/sizeConfig.dart';
import 'package:com/utilities/systemConstants.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';


import 'Intro/intro_dart.dart';
import 'utilities/colors.dart';
import 'utilities/connectionUtils.dart';
import 'utilities/dialogs.dart';












void main() => runApp(MyApp());
 BuildContext mainContext;
class MyApp extends StatefulWidget {
  // This widget is the root of your application.


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  //AppTranslationsDelegate _newLocaleDelegate;

  @override
  void initState() {
    super.initState();
   // _newLocaleDelegate = AppTranslationsDelegate(newLocale: null);
   // application.onLocaleChanged = onLocaleChange;
  }


  void onLocaleChange(Locale locale) {
    setState(() {
    ///  _newLocaleDelegate = AppTranslationsDelegate(newLocale: locale);
    });
  }
  @override
  Widget build(BuildContext context) {
  mainContext = context;
  return  // TODO: implement build
    MaterialApp(
      localizationsDelegates: [
      //  _newLocaleDelegate,
        //provides localised strings
      ///  GlobalMaterialLocalizations.delegate,
        //provides RTL support
       // GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", ""),
        const Locale("sw", ""),
      ],

      title: 'Maaktaba',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }

}

// ignore: non_constant_identifier_names
var Swidth = 0.0;
var Sheight = 0.0;
String Suser_id = "";
String Sphone_number = "";
String Semail = "";
String Sname = " ";


class MyHomePage extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  _MyHomePageState createState() => _MyHomePageState();
}
  BuildContext mContext;
class _MyHomePageState extends State<MyHomePage> {
  var
  delayTimer;



  @override
  void initState() {
    startTimer();
   // createPost(serverUrl, loginData());
   // ProductListSingleton().productList().add(new Product("wefe","wefe",4,"3r3",0,0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mContext = context;
    SizeConfig(context);
    Swidth =SizeConfig.screenWidth;
    Sheight = SizeConfig.screenHeight;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: appPrimaryColor,
      body: Column(
        
        children: [
          Expanded(
            child: Container(
              color: appPrimaryColor,
              child: Center(
                child: Text("WIGO",
                style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
              ),
            ),
          ),


          
        ],
      ),

    );
  }

  void startTimer(){
    bool logged = false;
      //getServerResponse(trackPointJson(), 400, false);
    delayTimer = new Timer(Duration(milliseconds: 3000),() async {
      Navigator.push(mContext, MaterialPageRoute(builder: (mContext) => IntroPage()));
       SharedPreferences preferences = await SharedPreferences.getInstance();
       if(preferences.getBool("logged")!=null){
        logged = preferences.getBool("logged");
        if(!logged){
     //Navigator.push(context, FadeRoute(page: LoginPage()));

        }else{

          Suser_id = preferences.get('user_id');
          Sphone_number = preferences.get('phone_number');
          Sname = preferences.get('user_name');
          print("$Sphone_number and $Sname");
            //Navigator.push(mContext, MaterialPageRoute(builder: (mContext) => HomeDisplayPage()));

           }}else{
        // Navigator.push(context, FadeRoute(page: LoginPage()));

       }
    }








    );

  }









  Future<void> getServerResponse (String requestJsonString,int rCode, bool hasLoading) async {
    if (hasLoading){
      MessageDialogs().loadingIndicator(context);}
    String serverResponse = await  ConnectionUtils(context).createPost(serverUrl, requestJsonString, hasLoading);
    if (hasLoading){
      MessageDialogs().dismissDialogs(context);}
    print(serverResponse);


  }


  String trackPointJson() {
    Map<String, dynamic> request = new Map();
    Map<String, dynamic> data = new Map();





    request['code'] = 7878;
    request['request_code'] = 600;
    request['user_id'] = Suser_id;
    request['code_intent'] = "Open App";

    print(jsonEncode(request));
    return jsonEncode(request);
  }
}






