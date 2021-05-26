import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:usaid_project/core/constant/size_config.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_button.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_input_field.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_password_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberCheck = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
              child: Container(
                width: SizeConfig.screenWidth,
                margin: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Image.asset("assets/logos/usaid_logo.png"),
                    SizedBox(height: 20,),
                    Text("ĐĂNG NHẬP", style: TextStyle(fontSize: SizeConfig.screenWidth * 0.08, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Chưa có tài khoản?   ", style: TextStyle(fontSize: SizeConfig.screenWidth * 0.04),),
                        Text("Đăng kí ngay    ", style: TextStyle(fontSize: SizeConfig.screenWidth * 0.04,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 20,),
                    RoundedInputField(
                      width: SizeConfig.screenWidth,
                      icon: Icons.phone_android,
                      hintText: "Số điện thoại",
                      onChanged: (value) {
                      },
                    ),
                    RoundedPasswordField(
                      width: SizeConfig.screenWidth,
                      title: "Mật Khẩu",
                      onChanged: (value) {
                      },
                    ),
                    Row(
                      children: [
                        Container(
                          height: SizeConfig.screenWidth * 0.1,
                          width: SizeConfig.screenWidth * 0.6,
                          child: CheckboxListTile(
                            title: Text("Nhớ mật khẩu", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.035, fontWeight: FontWeight.bold),),
                            value: rememberCheck,
                            onChanged: (newValue) {
                              setState(() {
                                rememberCheck = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                          ),
                        ),
                        GestureDetector(
                          child: Text("Quên mật khẩu", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.04, fontWeight: FontWeight.w400),),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    RoundedButton(text: "ĐĂNG NHẬP", color: Colors.blue, textColor: Colors.black, ),
                    SizedBox(height: 30,),
                    Center(child: GestureDetector(
                      child: Text("Bỏ qua", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.04, fontWeight: FontWeight.w400),),
                    ),),
                    SizedBox(height: 20,),
                    Center(
                      child: Text("HOẶC TIẾP TỤC VỚI", style: TextStyle(fontStyle: FontStyle.italic),),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/icons/google-plus.svg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.black,
                          child:CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
    );
  }
}
