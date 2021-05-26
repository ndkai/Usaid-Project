import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/size_config.dart';

class BaseMainPage extends StatelessWidget {
  final String title;
  final Function onBack;
  final Widget child;
  final Widget narbar;
  const BaseMainPage({Key key, this.title, this.onBack, this.child, this.narbar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: narbar,
      body: SingleChildScrollView(
        child: Container(
          width: SizeConfig.screenWidth,
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset("assets/logos/usaid_logo.png", height: SizeConfig.screenWidth * 0.15,),
              ),
              SizedBox(
                height: 15,
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
