import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usaid_project/core/constant/my_texts.dart';
import 'package:usaid_project/core/constant/size_config.dart';
import 'package:usaid_project/features/base/page/base_sub_page.dart';
import 'package:usaid_project/features/home/presentation/widgets/screen/pin_code_verification.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_button.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_input_field.dart';
import 'package:usaid_project/features/home/presentation/widgets/components/rounded_password_field.dart';

class AccountAuthenticatePage extends StatefulWidget {
  const AccountAuthenticatePage({Key key}) : super(key: key);

  @override
  _AccountAuthenticatePageState createState() => _AccountAuthenticatePageState();
}

class _AccountAuthenticatePageState extends State<AccountAuthenticatePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BaseSubPage(
      title: "Xác Thực Tài Khoản",
      onBack: () {},
      child: Column(
        children: [
          PinCodeVerificationScreen(
              "+8801376221100")
        ],
      ),
    );
  }
}
