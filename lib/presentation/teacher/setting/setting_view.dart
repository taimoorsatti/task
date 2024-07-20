import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/presentation/teacher/setting/widget/body.dart';

import '../../../app/theme/colors.dart';
import '../../common/new_navbar.dart';

class SettingViewScreen extends StatelessWidget {
  const SettingViewScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: MyNavBar(selectedMenu: MenuState.setting),
        body:SettingBody() ,
      ),
    );
  }
}
