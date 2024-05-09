import 'package:flutter/material.dart';
import '../Screen/Drawer/home.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomeScreen(),
  };
}