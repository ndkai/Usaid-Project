import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/size_config.dart';

class BaseSubPage extends StatelessWidget {
  final String title;
  final Function onBack;
  final Widget child;
  const BaseSubPage({Key key, this.title, this.onBack, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: onBack,
                    child: Icon(
                      Icons.arrow_back_ios_sharp,
                      size: SizeConfig.blockSizeHorizontal * 5,
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: SizeConfig.screenWidth * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("  ")
                ],
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
