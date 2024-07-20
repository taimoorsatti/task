import 'package:get/get.dart';
import 'package:task/models/teacher/ChatModel.dart';
import 'package:task/utils/appassets.dart';

class ChatScreenController extends GetxController {
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Your Manager",
        messageText: "Hey i got to know your are ...",
        imageURL: AppAssets.video2,
        time: "9:55",
        totalMsg: "10"),
    ChatUsers(
        name: "Antony Das",
        messageText: "Ok, have a good trip!",
        imageURL: AppAssets.blogs2,
        time: "9:55",
        totalMsg: ""),
    ChatUsers(
        name: "Revathi Freshworks",
        messageText: "Bro, I have a good idea!",
        imageURL: AppAssets.blogs3,
        time: "3:21",
        totalMsg: ""),
    ChatUsers(
        name: "Philip Fox",
        messageText: "Busy! Call me in 20 mins",
        imageURL: AppAssets.blogs4,
        time: "5:10",
        totalMsg: "5"),
    ChatUsers(
        name: "Debra Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURL: AppAssets.blogs5,
        time: "6:12",
        totalMsg: ""),
    ChatUsers(
        name: "Jacob Pena",
        messageText: "will update you in evening",
        imageURL: AppAssets.blogs8,
        time: "6:30",
        totalMsg: "2"),
    ChatUsers(
        name: "Andrey Jones",
        messageText: "Can you please share the file?",
        imageURL: AppAssets.video2,
        time: "9:55",
        totalMsg: "10"),
    ChatUsers(
        name: "John Wick",
        messageText: "How are you?",
        imageURL: "images/userImage8.jpeg",
        time: "9:55",
        totalMsg: "10"),
  ];
  var activeNeed=0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  addUser(message) {
    chatUsers.insert(0, message);
    update();
  }
}
