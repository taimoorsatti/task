import 'dart:async';
import 'dart:async';
import 'dart:convert';
import 'package:get/get.dart';

import '../../controllers/auth/login/login_controller.dart';
import '../../models/all_countries.dart';
import '../../models/auth/login/login_model.dart';
import '../../models/auth/signup/register_model.dart';
import '../api/api_provider.dart';
import '../api/config.dart';
import '../localstorage/SessionManager.dart';

class AuthRepository extends GetxService {
  ApiProvider apiProvider = Get.find<ApiProvider>();

  SessionManager sessionManagers = SessionManager();

  Future<LoginModel> login({
    required String? email,
    required String? password,
  }) async {
    var params = {
      'identifier': email,
      'password': password,
    };
    var response = await apiProvider.postRequest(APIURLS.login, body: params);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return LoginModel.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 400 || response.statusCode == 406) {
      throw "user not found, please try again later!";
    } else if (response.statusCode == 407) {
      throw jsonDecode(response.body)['message'];
    } else {
      throw 'Failed to login';
    }
  }

  Future<RegisterModel> signUp({
    String? email,
    String? password,
    String? username,
    String? userType,
    String? gender,
    String? country,
    String? description,
    String? skill,
    String? clas,
  }) async {
    var params = {
    "email":email,
    "password":password,
    "username":username,
    "userType":userType,
    "gender":gender,
    "country":country,
    "description":description,
    "skills":skill,
    "class":clas
    };
    var response = await apiProvider.postRequest(APIURLS.register, body: params);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return RegisterModel.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 400) {
      throw jsonDecode(response.body)['message'];
    } else if (response.statusCode == 409) {
      throw jsonDecode(response.body)['message'];
    } else {
      throw 'Failed to sign up';
    }
  }



Future<CountiesModel> getCountries()async{

  var response = await apiProvider.getRequest(baseURLCustom: APIURLS.getAllCountries,"");
  if (response.statusCode == 200 || response.statusCode == 201) {
    return CountiesModel.fromJson(jsonDecode(response.body));
  } else if (response.statusCode == 400) {
    throw jsonDecode(response.body)['message'];
  } else if (response.statusCode == 409) {
    throw jsonDecode(response.body)['message'];
  } else {
    throw 'Failed to sign up';
  }
}
}