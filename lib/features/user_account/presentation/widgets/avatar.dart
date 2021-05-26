import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/my_texts.dart';

class UserAvatar extends StatelessWidget {
  final String name;

  const UserAvatar({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 80,
          width: 80,
          child:   Stack(
            children: [
              CircleAvatar(
                radius: 40,
                child: Center(
                  child: Text("ND"),
                ),
              ),
              Align(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: Icon(Icons.camera_alt, size: 15, color: Colors.pink,),
                ),
                alignment: Alignment.bottomRight,
              )
            ],
          ),
        ),
        Text("Nhật Duy", style: bigBoldTextStyle,),
      ],
    );
  }
}
