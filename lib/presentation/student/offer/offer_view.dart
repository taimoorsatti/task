import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/presentation/student/offer/widgets/body.dart';
import 'package:task/utils/appassets.dart';

class OffersViewScreen extends StatelessWidget {
  const OffersViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mySystemTheme = SystemUiOverlayStyle.light.copyWith(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(mySystemTheme);

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[

                SizedBox(
                  width: 25.w,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage(AppAssets.video1),
                  maxRadius: 20,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Your Offers",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            color: AppColor.blackText,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),
        ),
      ),
      body: OfferBody(),
      bottomNavigationBar:
          MyNavBarStudent(selectedMenuStudent: MenuStateStudent.offer),
    ));
  }
}
