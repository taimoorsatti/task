import 'package:design_test/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chat_detail_view.dart';
import 'chat_list_view.dart';

class ChatView extends StatelessWidget {
  static const String id = "/ChatView";
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes().getChatPage(),
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              if (settings.name == Routes().getChatDetailsPage()) {
                return const ChatDetailsView();
              }
              return const ChatListView();
            },
          );
        },
      ),
    );
  }
}
