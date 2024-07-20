import 'dart:collection';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../models/teacher/calendar/calendar_model.dart';
import '../../../utils/appassets.dart';


class AddEventController extends GetxController{

  List<AddEventModel> listAddEvent=<AddEventModel>[];
  List<AddEventModel> listCalender=<AddEventModel>[];
  Rx<ModelAddEvent> addEventsModel =ModelAddEvent().obs;
  List<ModelAddEvent> calenderList=<ModelAddEvent>[].obs;
  int totalCount=0;
  List<ModelAddEvent> calenderdateList=<ModelAddEvent>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();



  }


  List<dynamic> getList(DateTime date){
    List <dynamic> allEvent=<dynamic>[];
    Map<DateTime,List<dynamic>> map={};
    for (int i = 0; i < Get.find<AddEventController>().listCalender.length; i++) {
      DateTime datetime=DateTime(date.year,date.year,date.month);
      if(map[datetime]==null) map[datetime]=[];
      map[datetime]?.add("item${i}");
    }
    allEvent.add(map);
    print(allEvent);
    return allEvent;
  }






//   final kEvents = LinkedHashMap<DateTime, List<dynamic>>(
//     equals: isSameDay,
//   )..addAll(getTask1);
//
// Map<DateTime, List> getTask1() {
//   Map<DateTime, List> mapFetch = {};
//   AddEventController addEvent = Get.put(AddEventController());
//
//   print(addEvent.allList.length);
//   for (int i = 0; i < 10; i++) {
//     DateTime myDate = DateFormat('yyyy-MM-dd').parse(addEvent.allList[i].date!);
//     var createTime = DateTime(myDate.year, myDate.month, myDate.day);
//     var original = mapFetch[createTime];
//     if (original == null) {
//       print("null");
//       mapFetch[createTime] = [addEvent.allList[i].title];
//     } else {
//       print(addEvent.allList[i].title);
//       mapFetch[createTime] = List.from(original);
//     }
//   }
//
//   return mapFetch;
// }





}