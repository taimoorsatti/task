import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task/presentation/student/home/widget/filter_button.dart';
import 'package:task/presentation/student/home/widget/service.dart';

import '../../../../app/theme/colors.dart';
import '../../../../app/theme/font.dart';
import '../../../../controllers/teacher/help_controller.dart';
import '../../../../utils/appassets.dart';
import '../../../common/apptextField2.dart';
import 'blogs.dart';

class StudentHomeBody extends StatelessWidget {
  const StudentHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    HelpController controller = Get.put(HelpController());
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 90.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: AppTextField2(
                    height: 50.h,
                    hint: 'Search by name',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(
                          left: 10.sp, right: 10.sp, bottom: 0.h),
                      child: Image.asset(AppAssets.search,
                          height: 20.h,
                          width: 20.w,
                          color: AppColor.primaryColor),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Popular Service",
                                style: TextStyle(
                                  color: AppColor.blackText,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 140.h,
                      width: double.infinity,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.listVideo.length,
                          itemBuilder: (context, index) {
                            return ServiceHome(
                              model: controller.listVideo[index],
                            );
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                height: 60.h,
                width: 339.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text("Chatting",style: TextStyle(
                            fontSize:16.sp,
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500)),
                        SizedBox(width: 20.w,),
                        Image.asset(
                          AppAssets.chatting,
                          height: 33.w,
                          width: 33.w,
                        ),

                      ],
                    ),
                    Text("Chatting with the Managers",style: TextStyle(
                        fontSize:8.sp,
                        color: AppColor.blackText,
                        fontFamily: AppFont.fontFamily,
                        fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0.w,top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Subject Prices",
                      style: TextStyle(
                        color: AppColor.blackText,
                        fontFamily: AppFont.fontFamily,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              SizedBox(
                height: 40.h,
                width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.all(0.w),
                          child: GestureDetector(
                            onTap: () {},
                            child:FilterButton(
                              index: index,
                          )));
                    }),
              ),
              SizedBox(height: 15.h,),

              Container(
                height: 60.h,
                width: 339.w,
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Image.asset(
                          AppAssets.fileIcon,
                          height: 33.w,
                          width: 33.w,
                          color: AppColor.primaryColor,
                        ),
                        SizedBox(width: 10.w,),
                        Text("Submit Your Assignment",style: TextStyle(
                            fontSize:16.sp,
                            color: AppColor.blackText,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500)),


                      ],
                    ),

                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 15.0.w,top: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Blogs",
                      style: TextStyle(
                        color: AppColor.blackText,
                        fontFamily: AppFont.fontFamily,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 250.h,
                width: double.infinity,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: EdgeInsets.all(0.w),
                          child: InkWell(
                            onTap: () {},
                            child: HomeBlogs(
                                model: controller.listBlogs[index]),
                          ));
                    }),
              ),
              SizedBox(
                height: 15.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Text(
                      "Best Videos / Reels",
                      style: TextStyle(
                        color: AppColor.blackText,
                        fontFamily: AppFont.fontFamily,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 250.h,
                    width: double.infinity,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.listVideo.length,
                        itemBuilder: (context, index) {
                          return HomeBlogs(
                            model: controller.listVideo[index],
                          );
                        }),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 0.h),
          child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: AppColor.whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Image.asset(
                          AppAssets.applogo,
                          width: 223.w,
                          height: 73.h,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.more_vert),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    );
  }
}
