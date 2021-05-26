import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/size_config.dart';

class FunctionWidget extends StatelessWidget {
  const FunctionWidget({Key key}) : super(key: key);
  final double itemsSize = 17;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      // height: size.height * 0.6,
      width: SizeConfig.screenWidth,
      color: Colors.transparent,
      child: Column(
        children: [
          functionItem("Thông Tin Cá Nhân", null),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          functionItem("Cập Nhật Thông Tin", null),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          functionItem("Đổi Mật Khẩu", null),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          functionItem("Cài Đặt Bảo Mật", null),
          Divider(
            height: 2,
            color: Colors.black,
          ),
          functionItem("Mã QR Của Tôi", null),
          SizedBox(height: 20,),
          FlatButton(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                border: Border.all(color: Colors.grey, width: 1),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.exit_to_app,
                      size: 20,
                    ),
                  ),
                  Center(
                    child: Text("Đăng Xuất",
                        style: TextStyle(color: Colors.red, fontSize: 18)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget functionItem(String name, Function onTap) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              nameTag(name, onTap),
              Container(
                child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }

  Widget nameTag(String name, Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          child: Row(
        children: [
          Container(
            height: SizeConfig.screenWidth * 0.1,
            width: SizeConfig.screenWidth * 0.1,
            child: Image.asset("assets/images/green_gradient.jpg"),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(5)),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: TextStyle(fontSize: itemsSize),
          ),
        ],
      )),
    );
  }
}
