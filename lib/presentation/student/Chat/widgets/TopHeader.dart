import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:task/controllers/teacher/ChatScreeController.dart';
import 'package:task/presentation/teacher/Chat/ChatView.dart';
import 'package:task/models/teacher/ChatModel.dart';

class TopHeader extends StatefulWidget {
  @override
  _TopHeaderState createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  ChatScreenController controller = Get.find<ChatScreenController>();

  ChatView model = ChatView();
  TextEditingController nameController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Conversations",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding:
                          EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.pink,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          InkWell(
                              onTap: () {
                                Addnew(context);
                              },
                              child: Text(
                                "Add New",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Addnew(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Center(
              child: Material(
            type: MaterialType.transparency,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white),
              padding: EdgeInsets.only(top: 5.0, right: 2, left: 2),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 330,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Enter Name",
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              //hintText: 'Enter Name',
                              enabledBorder: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Enter Type",
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: TextFormField(
                            controller: typeController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              //hintText: 'Enter Name',
                              enabledBorder: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text(
                          "Enter Time",
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12)),
                          child: TextFormField(
                            controller: timeController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              //hintText: 'Enter Name',
                              enabledBorder: null,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      ChatUsers message = ChatUsers(
                          name: nameController.text,
                          messageText: typeController.text,
                          imageURL: "images/userImage8.jpeg",
                          time: timeController.text);
                      setState(() {
                        controller.addUser(message);
                      });
                      Navigator.pop(context);
                    },
                    height: 50,
                    minWidth: 200,
                    color: Colors.red,
                    child: Text("Add New"),
                  )
                ],
              ),
            ),
          ));
        });
  }
}
