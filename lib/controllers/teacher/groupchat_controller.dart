import 'package:get/get.dart';
import 'package:task/models/teacher/ChatModel.dart';
import 'package:task/utils/appassets.dart';

class GroupChatScreenController extends GetxController {
  List<ChatUsers> groupChatUsers = [
    ChatUsers(
        name: "Maths Assignments",
        messageText: "Bro, I have a good idea! ",
        imageURL: AppAssets.video2,
        time: "9:55 AM",
        totalMsg: "10"),
    ChatUsers(
        name: "Maths Tutor",
        messageText: "Welcome, to make design ...",
        imageURL: AppAssets.male,
        time: "9:55 AM",
        totalMsg: ""),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  addUser(message) {
    groupChatUsers.insert(0, message);
    update();
  }
}
