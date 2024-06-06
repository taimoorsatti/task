import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'app/app.dart';
import 'app/dependencies.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const TaskApp());
}
