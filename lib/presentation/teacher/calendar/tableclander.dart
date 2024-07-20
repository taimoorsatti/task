import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:task/app/theme/colors.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/app/theme/font.dart';
import 'package:task/presentation/teacher/calendar/widgets/textfield.dart';

import '../../../controllers/teacher/calendar/calendar_controller.dart';
import '../../../models/teacher/calendar/calendar_model.dart';
import '../../../utils/appassets.dart';
import '../../common/appbutton.dart';
import '../../common/apptextField2.dart';
import '../../common/new_navbar.dart';

Rx<ModelAddEvent> addEventsModel = ModelAddEvent().obs;
List<ModelAddEvent> allList = <ModelAddEvent>[].obs;

class TableEventsExample extends StatefulWidget {
  static const routeName = "/myevent";

  @override
  _TableEventsExampleState createState() => _TableEventsExampleState();
}

class _TableEventsExampleState extends State<TableEventsExample> {
  //late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  final RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  List<ModelAddEvent> listdata = [];
  AddEventController addEventController = Get.put(AddEventController());
  int totalCount = 0;
  bool isloop = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void dispose() {
    //_selectedEvents.dispose();
    super.dispose();
  }

  int _index = 1;
  List<dynamic> eventList = <dynamic>[];

  List<dynamic> _getEventsFor(DateTime day) {
    final data = getListEvent(day);
    print(data);
    return data;
  }

  void _onDaySelect(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
      });
    }
  }

  List<dynamic> getListEvent(DateTime date) {
    List StringData = [];
    isloop = false;
    for (int i = 0; i < allList.length; i++) {
      allList[i].date.toString();

      var closeData =
          DateFormat("MMM-d-yyyy, " 'h:mm a').parse(allList[i].date.toString());
      if (date.year == closeData.year &&
          date.month == closeData.month &&
          date.day == closeData.day) {
        isloop = true;
        StringData.add("item${i}");
        print(StringData);
      } else {
        if (isloop) {
          StringData = StringData;
        } else {
          StringData = [];
        }
      }
    }
    return StringData;
  }

  @override
  Widget build(BuildContext context) {

    return GetBuilder(
      init: AddEventController(),
      builder: (AddEventController viewModel) {
        return Scaffold(
          backgroundColor: const Color(0xffF5F4F4),
          bottomNavigationBar: MyNavBar(selectedMenu: MenuState.calender),
          extendBody: true,
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 0.0.sp, horizontal: 15.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.sp,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                AppColor.primaryColor,
                                AppColor.blueColor,
                              ],
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(1, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.sp),
                            child: TableCalendar<dynamic>(
                              headerStyle: HeaderStyle(
                                formatButtonVisible: false,
                                titleCentered: true,
                                leftChevronVisible: false,
                                rightChevronVisible: false,
                                titleTextStyle: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.whiteColor,
                                  fontFamily: AppFont.fontFamily,
                                ),
                              ),
                              firstDay: kFirstDay,
                              lastDay: kLastDay,
                              focusedDay: _focusedDay,
                              rowHeight: 35.sp,
                              daysOfWeekHeight: 20.sp,
                              daysOfWeekStyle: DaysOfWeekStyle(
                                weekdayStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.blackText,
                                  fontFamily: AppFont.fontFamily,
                                ),
                                weekendStyle: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.blackText,
                                  fontFamily: AppFont.fontFamily,
                                ),
                              ),
                              selectedDayPredicate: (day) =>
                                  isSameDay(_selectedDay, day),
                              rangeStartDay: _rangeStart,
                              rangeEndDay: _rangeEnd,
                              calendarFormat: _calendarFormat,
                              rangeSelectionMode: _rangeSelectionMode,
                              eventLoader: _getEventsFor,
                              startingDayOfWeek: StartingDayOfWeek.monday,
                              calendarStyle: CalendarStyle(
                                markerMargin:
                                    EdgeInsets.only(top: 5.sp, right: 2.sp),
                                markerSize: 5.sp,
                                markerDecoration: BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                outsideDaysVisible: true,
                                weekendTextStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: AppFont.fontFamily,
                                ),
                                defaultTextStyle: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: AppFont.fontFamily,
                                ),
                              ),
                              onDaySelected: _onDaySelect,
                              onFormatChanged: (format) {
                                if (_calendarFormat != format) {
                                  setState(() {
                                    _calendarFormat = CalendarFormat.month;
                                  });
                                }
                              },
                              onPageChanged: (focusedDay) {
                                _focusedDay = focusedDay;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0.w, vertical: 0.h),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: AppTextField2(
                              height: 60.h,
                              hint: 'Name',
                              textInputType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 0.sp, right: 0.sp, bottom: 0.h),
                                child: Image.asset(AppAssets.search,
                                    height: 20.h,
                                    width: 20.w,
                                    color: AppColor.whiteColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h,),

                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0.w, vertical: 5.h),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  offset: Offset(
                                      0, 2), // changes position of shadow
                                ),
                              ],
                            ),
                            child: AppTextField2(
                                 height: 120.h,
                              hint: 'Description',
                              textInputType: TextInputType.text,
                              maxLine: 3,
                              textInputAction: TextInputAction.next,
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                    left: 0.sp, right: 0.sp, bottom: 0.h),
                                child: Image.asset(AppAssets.search,
                                    height: 20.h,
                                    width: 20.w,
                                    color: AppColor.whiteColor),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15.h,),
                        const CalendarTextFeildWidget(),
                        SizedBox(height: 25.h,),
                        Center(
                          child: AppButton(
                            text: "Create Link",
                            onClick: () {

                            },
                            minBtnHeight: 50.h,
                            borderRadius: 16.r,
                            fontSize: 16.sp,
                            fontFamily: AppFont.fontFamily,
                            maxBtnHeight: 56.h,
                            minimumBtnWidth: 335.w,
                            fontWeight: FontWeight.w500,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

AddEventController addEvent = Get.put(AddEventController());

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}

final kEvents = Map<DateTime, List<dynamic>>()..addAll(_kEventSource);

final _kEventSource = {
  for (var item in List.generate(allList.length, (index) => index))
    DateTime.utc(
            Get.find<AddEventController>().listCalender[item].date!.year,
            Get.find<AddEventController>().listCalender[item].date!.month,
            Get.find<AddEventController>().listCalender[item].date!.day):
        List.generate(
            getList(DateTime(
                Get.find<AddEventController>().listCalender[item].date!.year,
                Get.find<AddEventController>().listCalender[item].date!.month,
                Get.find<AddEventController>().listCalender[item].date!.day)),
            (index) => Event('Event $item'))
};

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

int getList(DateTime date) {
  int totalcount = 0;
  for (int i = 0; i < Get.find<AddEventController>().listCalender.length; i++) {
    if (date.year ==
            Get.find<AddEventController>().listCalender[i].date!.year &&
        date.month ==
            Get.find<AddEventController>().listCalender[i].date!.month &&
        date.day == Get.find<AddEventController>().listCalender[i].date!.day) {
      totalcount = totalcount + 1;
    }
  }
  print(totalcount);
  return totalcount;
}

class CleanCalendarEvent {
  String? eventname;

  CleanCalendarEvent({this.eventname});
}
