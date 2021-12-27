


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'dialogs.dart';

class ConnectionUtils{


  BuildContext context;
  Future<String> createPost(String url, String jsonString, bool hasLoading) async {
    print("requesr: " + url + " ," + jsonString);
    http.Response response = await http.post(url,body: jsonString);
    final int statusCode = response.statusCode;
    if (statusCode < 200 || statusCode > 400) {
         if (hasLoading){
        MessageDialogs().dismissDialogs(context);}
        MessageDialogs().messageDialog(context, "Error",
            "Seems There is a problem please try again later", 564);
        throw new Exception("Error while fetching data");
      }
    return response.body;
  }

  ConnectionUtils(this.context);
}