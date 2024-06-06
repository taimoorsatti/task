// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables


import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'config.dart';




class ApiProvider extends GetxService {
  ///SessionManager sessionManager = Get.find<SessionManager>();

  Future<http.Response> getRequest(String? endPoint,
      {String? baseURLCustom}) async {
    try {
      String url = '${baseURLCustom ?? BASEURL}$endPoint';
      log('[GET] $url');
      http.Response response = await http
          .get(
        Uri.parse(url),
         headers:
        {
          'Content-Type': 'application/json',
          'Accept': '*/*',
        },
      )
          .timeout(
        const Duration(seconds: timeoutDuration),
        onTimeout: (() => throw 'Please try again'),
      );
      log('Code: ${response.statusCode} $url');

      return response;
    } catch (e) {
      log(e.toString());
      throw 'Please try again';
    }
  }


}
