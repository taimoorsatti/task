// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables


import 'dart:convert';
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
          'Authorization':
          '28cc54302f2352c5cbf07bc6724a86066d3f87e075eeb0663988829fae882d3abdbd8be4dc392404c13765789aa6f6f56bb04c63f485673144a580447a48f50a0672b884071a398f7492dd6b88b8a2c84a8394cd1e2e899de54d840d5e46be45aca85acc2a28b9e75c9b15377ff0343a5205189acd88cba9c04a39159b375449',

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


  Future<http.Response> postRequest(String endPoint,{String? baseURLCustom, dynamic body}) async {

    try {
      String url = '${baseURLCustom ?? BASEURL}$endPoint';
      log('API URL: POST $url  $body');
      http.Response response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
          'Authorization':
          '28cc54302f2352c5cbf07bc6724a86066d3f87e075eeb0663988829fae882d3abdbd8be4dc392404c13765789aa6f6f56bb04c63f485673144a580447a48f50a0672b884071a398f7492dd6b88b8a2c84a8394cd1e2e899de54d840d5e46be45aca85acc2a28b9e75c9b15377ff0343a5205189acd88cba9c04a39159b375449',

        },
        body:jsonEncode(body),
      ).timeout(
        const Duration(seconds: timeoutDuration),
        onTimeout: (() => throw "please try again"),
      );
      log('Response: ${response.statusCode} $url');
      return response;
    } catch (e) {
      log(e.toString());
      throw "Sever error";
    }
  }


  Future<http.Response> patchRequest(String endPoint, {dynamic body}) async {
    //SessionManager _s=SessionManager();
    try {
      String url = "$endPoint";
      log('API URL: POST $url  $body');
      http.Response response = await http.patch(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
        body:jsonEncode(body),
      ).timeout(
        const Duration(seconds: timeoutDuration),
        onTimeout: (() => throw "Please try again"),
      );
      log('Response: ${response.statusCode} $url');
      return response;
    } catch (e) {
      log(e.toString());
      throw "Please try again";
    }
  }


  Future<http.Response> deleteRequest(String endPoint,) async {
    try {
      String url = "$endPoint";
      http.Response  response = await http.delete(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          "Accept": "application/json",
        },
      ).timeout(
        const Duration(seconds: timeoutDuration),
        onTimeout: (() => throw "Please try again"),
      );
      log('Response: ${response.statusCode} $url');
      return response;
    } catch (e) {
      log(e.toString());
      throw "Please try again";
    }
  }


}
