import 'package:device_info/device_info.dart';

Future<int> getDeviceVersion() async{
  var androidInfo = await DeviceInfoPlugin().androidInfo;
  print("getDeviceInfo: ${androidInfo.version.sdkInt}");
  return  androidInfo.version.sdkInt;
}