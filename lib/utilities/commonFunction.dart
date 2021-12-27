

  import 'dart:convert';

import 'package:com/utilities/dialogs.dart';
import 'package:flutter/cupertino.dart';

bool validateInputs(BuildContext context,List<String>inputs){
     bool valid = true;
    for (int i =0; i<inputs.length;i++){
           String input = inputs[i];
           if(input.isEmpty){
              MessageDialogs().messageDialog(context, "Alert", "Please Fill All The Fields", 3464);
              valid = false;
              break;
           }

    }
    return valid;
  }


  String getCountries(){
    Map<String, dynamic> request = new Map();
    Map<String, dynamic> data = new Map();

    request['code'] = "110";
    request['api'] = '140';


    print(jsonEncode(request));
    return jsonEncode(request);

  }