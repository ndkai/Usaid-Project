import 'package:flutter/material.dart';
import 'package:usaid_project/features/auth/presentation/pages/login_page.dart';

import 'features/auth/presentation/pages/change_page_page.dart';
import 'features/base/page/base_main_page.dart';
import 'features/user_account/presentation/pages/user_account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UserAccountPage(),
    );
  }
}

