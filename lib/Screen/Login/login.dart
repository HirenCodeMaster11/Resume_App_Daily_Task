import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app_daily_task/Screen/Login/page1.dart';
import 'package:resume_app_daily_task/Screen/Login/page2.dart';

void main()
{
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => page1(),
        'page2' : (context) => page2(),
      },
    );
  }
}
