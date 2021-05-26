import 'package:flutter/cupertino.dart';
import 'package:usaid_project/features/base/page/base_main_page.dart';
import 'package:usaid_project/features/base/widget/bottom_narbar.dart';
import 'package:usaid_project/features/user_account/presentation/widgets/avatar.dart';
import 'package:usaid_project/features/user_account/presentation/widgets/function_widget.dart';

class UserAccountPage extends StatefulWidget {
  const UserAccountPage({Key key}) : super(key: key);

  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  @override
  Widget build(BuildContext context) {
    return BaseMainPage(
      narbar: BottomNar(index: 3,),
      child: Column(
        children: [
          UserAvatar(),
          FunctionWidget(),
        ],
      ),
    );
  }
}
