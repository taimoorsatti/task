import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:task/presentation/student/Chat/ChatView.dart';
import 'package:task/presentation/student/Chat/widgets/ChatComponet.dart';
import 'package:task/presentation/student/auth/forget/forget_password_view.dart';
import 'package:task/presentation/student/auth/login/login_view.dart';
import 'package:task/presentation/student/auth/otp/otp_view.dart';
import 'package:task/presentation/student/auth/signup/signup_view.dart';
import 'package:task/presentation/student/offer/offer_view.dart';
import 'package:task/presentation/student/services/service_view.dart';
import 'package:task/presentation/student/services/widgets/assignment/assignment_view.dart';
import 'package:task/presentation/student/services/widgets/tutor/tutor_view.dart';
import 'package:task/presentation/teacher/Chat/ChatView.dart';
import 'package:task/presentation/teacher/Chat/widgets/ChatComponet.dart';
import 'package:task/presentation/teacher/auth/login/login_view.dart';
import 'package:task/presentation/home/home_view.dart';
import 'package:task/presentation/splash/splash_view.dart';
import 'package:task/presentation/start/get_start_view.dart';
import 'package:task/presentation/teacher/calendar/clalendar_view.dart';
import 'package:task/presentation/teacher/groups/Components/ChatComponet.dart';
import 'package:task/presentation/teacher/groups/group_view.dart';
import 'package:task/presentation/teacher/help/help_view.dart';
import 'package:task/presentation/teacher/setting/payment/add_card_screen.dart';

import 'package:task/routing/routes.dart';

import 'package:page_transition/page_transition.dart';

import '../presentation/onboarding/components/newonboarding.dart';
import '../presentation/student/home/home_view.dart';
import '../presentation/teacher/auth/signup/signup_view.dart';
import '../presentation/teacher/calendar/tableclander.dart';
import '../presentation/teacher/setting/setting_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return PageTransition(
          child: const SplashViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const SplashViewScreen(),
          settings: settings,
        );

      case AppRoutes.start:
        return PageTransition(
          child: const GetStart(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const GetStart(),
          settings: settings,
        );

      case AppRoutes.home:
        return PageTransition(
          child: const HomeViewScren(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const HomeViewScren(),
          settings: settings,
        );

      case AppRoutes.login:
        return PageTransition(
          child: const LoginViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const LoginViewScreen(),
          settings: settings,
        );

      case AppRoutes.signup:
        return PageTransition(
          child: const SignUpScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const SignUpScreen(),
          settings: settings,
        );

      case AppRoutes.help:
        return PageTransition(
          child: const HelpViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const HelpViewScreen(),
          settings: settings,
        );

      case AppRoutes.calendar:
        return PageTransition(
          child: TableEventsExample(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: TableEventsExample(),
          settings: settings,
        );

      case AppRoutes.chat:
        return PageTransition(
          child: ChatView(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: ChatView(),
          settings: settings,
        );

      case AppRoutes.group:
        return PageTransition(
          child: const GroupsChatView(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const GroupsChatView(),
          settings: settings,
        );
      case AppRoutes.singlechatroom:
        return PageTransition(
          child: ChatComponent(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: ChatComponent(),
          settings: settings,
        );

      case AppRoutes.groupchatroom:
        return PageTransition(
          child: const GroupChatComponents(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const GroupChatComponents(),
          settings: settings,
        );
      case AppRoutes.studentlogin:
        return PageTransition(
          child: const StudentLoginViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const StudentLoginViewScreen(),
          settings: settings,
        );
      case AppRoutes.studentSignup:
        return PageTransition(
          child: const StudentStudentSignUpScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const StudentStudentSignUpScreen(),
          settings: settings,
        );
      case AppRoutes.studentchat:
        return PageTransition(
          child: StudentChatView(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: StudentChatView(),
          settings: settings,
        );
      case AppRoutes.studentchatComponent:
        return PageTransition(
          child: StudentChatView(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: StudentChatComponent(),
          settings: settings,
        );
      case AppRoutes.offers:
        return PageTransition(
          child: const OffersViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const OffersViewScreen(),
          settings: settings,
        );

      case AppRoutes.service1:
        return PageTransition(
          child: ServiceViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: ServiceViewScreen(),
          settings: settings,
        );

      case AppRoutes.assignment:
        return PageTransition(
          child: const AssignmentViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const AssignmentViewScreen(),
          settings: settings,
        );

      case AppRoutes.tutor:
        return PageTransition(
          child: const TutorViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const TutorViewScreen(),
          settings: settings,
        );

      case AppRoutes.onBoarding:
        return PageTransition(
          child: const OnboardingScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const OnboardingScreen(),
          settings: settings,
        );

      case AppRoutes.setting:
        return PageTransition(
          child: const SettingViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const SettingViewScreen(),
          settings: settings,
        );

      case AppRoutes.addcard:
        return PageTransition(
          child: const AddCardScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const AddCardScreen(),
          settings: settings,
        );

      case AppRoutes.forget:
        return PageTransition(
          child: const ForgetPassword(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const ForgetPassword(),
          settings: settings,
        );

      case AppRoutes.otp:
        return PageTransition(
          child: const OtpViewScreen(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const OtpViewScreen(),
          settings: settings,
        );
      case AppRoutes.homeStudent:
        return PageTransition(
          child: const HomeStudentView(),
          type: PageTransitionType.fade,
          duration: const Duration(microseconds: 2),
          childCurrent: const HomeStudentView(),
          settings: settings,
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        ),
      );
    });
  }
}
