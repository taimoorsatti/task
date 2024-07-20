import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/controllers/teacher/help_controller.dart';
import 'package:task/presentation/common/new_navbar.dart';
import 'package:task/presentation/teacher/help/widgets/blogs.dart';
import 'package:task/presentation/teacher/help/widgets/videos_reels.dart';

import '../../../app/theme/font.dart';
import '../../../utils/appassets.dart';
import '../../common/appbar.dart';

class HelpViewScreen extends StatelessWidget {
  const HelpViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HelpController controller = Get.put(HelpController());

    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.whiteColor,
            appBar: _appBar,
            bottomNavigationBar: MyNavBar(selectedMenu: MenuState.help),
            body: Padding(
              padding: EdgeInsets.only(left: 15.0.w, right: 15.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "Videos/ Reels",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.w,
                      ),
                      Row(
                        children: [
                          Text(
                            "See Our Videos and Reels",
                            style: TextStyle(
                              color: AppColor.greyLight,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Flexible(
                              child: Container(
                            height: 2.h,
                            width: double.infinity,
                            color: AppColor.greyLight.withOpacity(0.2),
                          ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 140.h,
                    width: double.infinity,
                    child: Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listVideo.length,
                          itemBuilder: (context, index) {
                            return VideoReelsWidget(
                              model: controller.listVideo[index],
                            );
                          }),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: Text(
                          "Blogs",
                          style: TextStyle(
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0.w),
                        child: Row(
                          children: [
                            Text(
                              "See Our Latest Blogs",
                              style: TextStyle(
                                color: AppColor.greyLight,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Flexible(
                                child: Container(
                              height: 2.h,
                              width: double.infinity,
                              color: AppColor.greyLight.withOpacity(0.2),
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3, // number of items in each row
                            mainAxisSpacing: 10.0.sp, // spacing between rows
                            crossAxisSpacing: 0.0.sp,
                            childAspectRatio: 13 / 14 // spacing between columns
                            ),
                        itemCount: controller.listBlogs.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: EdgeInsets.all(0.w),
                              child: InkWell(
                                onTap: () {},
                                child: BlogsWidget(
                                    model: controller.listBlogs[index]),
                              ));
                        }),
                  ),
                ],
              ),
            )));
  }

  PreferredSize get _appBar => PreferredSize(
        preferredSize: Size.fromHeight(56.h),
        child: AppBarItem(
          title: 'Help',
          showBorderBottom: false,
          backgroudColor: AppColor.whiteColor,
          showLeading: true,

          sufixWidget: const Icon(Icons.more_vert),
        ),
      );
}
