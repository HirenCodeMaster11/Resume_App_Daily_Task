import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_daily_task/Screen/Login/page2.dart';
import 'package:resume_app_daily_task/utils/Routes.dart';

import 'Screen/Login/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(statusBarColor: Colors.green),
    // );
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    // ],);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => page1(),
        'page2' : (context) => page2(),
      },
    );
  }
}