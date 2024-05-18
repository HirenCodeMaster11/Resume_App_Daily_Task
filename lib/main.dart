import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_app_daily_task/ChromeLogin/login2.dart';
import 'package:resume_app_daily_task/Screen/Login/page2.dart';
import 'package:resume_app_daily_task/utils/Routes.dart';

import 'ChromeLogin/login1.dart';
import 'ChromeLogin/login3.dart';
import 'DynamicTextField/DynamicTextField.dart';
import 'DynamicTextField/SkillPrint.dart';
import 'ID CARD/idCard.dart';
import 'ID CARD/registrationForm.dart';
import 'ImagePicker.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => DynamicTextField(),
        '/skill' : (context) => Skill(),
      },
    );
  }
}