

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:task/models/auth/signup/register_model.dart';

import '../../../data/localstorage/SessionManager.dart';
import '../../../data/repository/auth_repo.dart';
import '../../../models/all_countries.dart';
import '../../../models/auth/login/login_model.dart';
import '../../../presentation/common/snakbar_dialog.dart';
import '../../../routing/routes.dart';

class SignUpController extends GetxController {
  AuthRepository _authRepository = AuthRepository();
  final isShowPassword = true.obs;
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  TextEditingController registerEmailController = TextEditingController();
  TextEditingController registerPasswordController = TextEditingController();
  TextEditingController registerTypeController = TextEditingController();
  TextEditingController registerUserNameController = TextEditingController();
  TextEditingController registerGenderController = TextEditingController();
  TextEditingController registerCountryController = TextEditingController();
  TextEditingController registerNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  Rx<bool> isLoading = false.obs;
  SessionManager sessionManagers=SessionManager();

  var use="username".obs;
  Rx<int> selectedIndex=0.obs;

  clear() {
     registerEmailController.text = "";
     registerPasswordController.text = "";
     registerGenderController.text= "";
     registerUserNameController .text= "";
     registerGenderController.text = "";
     registerCountryController.text = "";
     registerNameController.text = "";
     phoneController.text = "";
  }


  void register(String type) async {
    try {
      isLoading.value = true;

      RegisterModel currentUser = await _authRepository.signUp(
          email:registerEmailController.text,
          password:registerPasswordController.text,
          username:registerUserNameController.text,
          userType:type=="student"?"Student":"Teacher",
          gender:"Male",
          country:"pakistan",
          description:"heloo",
          skill:"flutter devolper",
          clas:"9");

      if (currentUser.user != "") {
        if(type=="teacher"){
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
              duration: Duration(seconds: 1),
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AppSnakBar(
                message: "Register SUCCESSFULLY",
              )));

          Future.delayed(Duration(seconds: 1), () {
            Get.toNamed(AppRoutes.help);
            clear();
          });
          isLoading.value=false;

        }
        else{
          ScaffoldMessenger.of(Get.context!).showSnackBar(const SnackBar(
              duration: Duration(seconds: 1),
              elevation: 0,
              behavior: SnackBarBehavior.floating,
              backgroundColor: Colors.transparent,
              content: AppSnakBar(
                message: "Register SUCCESSFULLY",
              )));

          Future.delayed(Duration(seconds: 1), () {
            Get.toNamed(AppRoutes.offers);
            clear();
          });
          isLoading.value=false;

        }
      }
    } catch (e) {
      //Fluttertoast.showToast(msg: e.toString());
      Get.back();
    }
  }




  validateEmail(
      {required String email,
        required String name,
        required String userName,
        required String password,
        required String gender,
        required String  country,
        required String phone,
        required String type,
      }) {
    if (!GetUtils.isEmail(email)) {
      Fluttertoast.showToast(
          msg: "   please Enter a valid email  ",
          backgroundColor: Colors.black);
    } else if (name.isEmpty) {
      Fluttertoast.showToast(
          msg: "   name field required  ", backgroundColor: Colors.black);
    }
    else if (userName.isEmpty) {
      Fluttertoast.showToast(
          msg: "   userName field required  ", backgroundColor: Colors.black);
    }
    else if (phone.isEmpty&&phone.length < 10) {
      Fluttertoast.showToast(
          msg: "   invalid phone number  ", backgroundColor: Colors.black);
    }
    else if (gender.isEmpty) {
      Fluttertoast.showToast(
          msg: "   select Gender   ",
          backgroundColor: Colors.black);
    }
    else if (country.isEmpty) {
      Fluttertoast.showToast(
          msg: "   select country   ",
          backgroundColor: Colors.black);
    }
    else if (password.length < 8) {
      Fluttertoast.showToast(
          msg: "   password length must be grater then 7  ",
          backgroundColor: Colors.black);
    } else {
      register(type);
    }
  }



}
