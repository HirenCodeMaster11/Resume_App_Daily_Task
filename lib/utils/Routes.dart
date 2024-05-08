import 'package:flutter/material.dart';

import '../Screen/HomeScreen/home.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const HomeScreen(),
  };
}