import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class AssignmentController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }


  File? file;
  Future<void> postDataAndUploadFile(String filepath) async {
    Map<String,String> data={
        "title":"Urgent Work", "description":"Need to do fast",
        "deadlineTime":"2024-06-18T15:30:00Z", "users_permissions_user":"2",
        "subject":"1",
        "language":"English",
        "assignedBy":"2", "isActive":"true"};
    var request = http.MultipartRequest('POST',Uri.parse('http://16.170.88.89/api/assignments'));
    // Add JSON data to the request
    request.fields.addAll(data);

    // Add file to upload
    var file = await http.MultipartFile.fromPath('files.file',filepath,);
    request.files.add(file);

    // Send the request
    var response = await request.send();

    if (response.statusCode == 200) {
      print('Data posted and file uploaded successfully');
    }
    if (response.statusCode == 403) {
      var res=response.stream;
    }
  }

}
