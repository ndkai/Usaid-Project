import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usaid_project/features/auth/presentation/pages/login_page.dart';

String changeStringToTime(String datetime){
   try{
     DateTime time = DateTime.parse(datetime);
     return "${time.day}/${time.month}/${time.year}";
   }catch(e){
     return "";
   }
}

String changeStringToTime1(String hour){
  try{
    List<String> list = hour.split(":");
    return "${list[0]}:${list[1]}:${list[2]}";
  }catch(e){
    return "";
  }
}

void changePage(BuildContext context, StatefulWidget widget){
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
}

// Future<void> openBrowser() async {
//   SettingModel settingModel = SettingModel(
//       url: "http://google.com",//Your url
//       intCaseShowError: SettingModel.SHOW_TOAST,//Show dialog or toast if error
//       messageErrorShow: "Error");//Your error message.
//   await FlutterOpenBrowser.openBrowserSelect(settingModel: settingModel);
// }