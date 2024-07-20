import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:task/routing/routes.dart';

import '../../../app/theme/colors.dart';
import '../../../data/localstorage/SessionManager.dart';
import '../../../data/repository/auth_repo.dart';
import '../../../models/all_countries.dart';
import '../../../models/auth/login/login_model.dart';
import '../../../presentation/common/snakbar_dialog.dart';

class LoginController extends GetxController {



  List<Data> listContries=[];
  AuthRepository _authRepository = AuthRepository();
  Rx<bool> isShowPassword = true.obs;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Rx<bool> isLoading = false.obs;
  SessionManager sessionManagers = SessionManager();
  var use = "username".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllCountries();
  }

  clear() {
    emailController.text = '';
    passwordController.text = '';
  }

  loginTeacher() async {
    try {
      isLoading.value = true;

      LoginModel currentUser = await _authRepository.login(
        email: emailController.text,
        password: passwordController.text,
      );
      if (currentUser.user != "") {
        if (currentUser.user?.userType == "Teacher") {
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
              duration: Duration(seconds: 1),
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AppSnakBar(
                message: "LOGIN SUCCESSFULLY",
              )));
          Future.delayed(Duration(seconds: 2), () {
            Get.toNamed(AppRoutes.help);
            clear();
          });
          isLoading.value=false;
          clear();

        } else {

            ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
                duration: Duration(seconds: 1),
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AppSnakBar(
                  message: "INVALID CREDENTIAL",
                )));
            isLoading.value=false;
            clear();


      }}
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      isLoading.value=false;

    }
  }




  loginStudent() async {
    try {
      isLoading.value = true;

      LoginModel currentUser = await _authRepository.login(
        email: emailController.text,
        password: passwordController.text,
      );
      if (currentUser.user != "") {
        if (currentUser.user?.userType == "Student") {
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
              duration: Duration(seconds: 1),
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AppSnakBar(
                message: "LOGIN SUCCESSFULLY",
              )));
          Future.delayed(Duration(seconds: 1), () {
            Get.toNamed(AppRoutes.offers);
            clear();
          });
          isLoading.value=false;

        } else {

          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
              duration: Duration(seconds: 1),
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AppSnakBar(
                message: "INVALID CREDENTIAL",
              )));
          isLoading.value=false;
          clear();

        }}
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      isLoading.value=false;

    }
  }

  getAllCountries()async{
    CountiesModel currentUser = await _authRepository.getCountries();
    if(currentUser.data!.isNotEmpty){
      listContries=currentUser.data!;
      print(listContries);

    }
  }

}
