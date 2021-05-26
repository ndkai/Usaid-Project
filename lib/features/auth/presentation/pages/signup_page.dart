import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:usaid_project/core/constant/size_config.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_button.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_input_field.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_password_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
              Text("ĐĂNG KÍ", style: TextStyle(fontSize: SizeConfig.screenWidth * 0.08, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text("Vui lòng điền đầy đủ thông tin"),
              SizedBox(height: 20,),
              RoundedInputField(
                width: SizeConfig.screenWidth,
                icon: Icons.person,
                hintText: "Tên người dùng",
                onChanged: (value) {
                },
              ),
              RoundedInputField(
                width: SizeConfig.screenWidth,
                icon: Icons.phone_android,
                hintText: "Số điện thoại",
                onChanged: (value) {
                },
              ),
              RoundedPasswordField(
                width: SizeConfig.screenWidth,
                onChanged: (value) {
                },
              ),
              Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Đã có tài khoản   ", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.04),),
                  GestureDetector(
                    child: Text("Đăng nhập ngay  ", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.04, fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              RoundedButton(text: "ĐĂNG KÍ", color: Colors.blue, textColor: Colors.black, ),
              SizedBox(height: 30,),
              Center(child: GestureDetector(
                child: Text("Bỏ qua", style: TextStyle(color: Colors.black, fontSize: SizeConfig.screenWidth * 0.04, fontWeight: FontWeight.w400),),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
