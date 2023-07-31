import 'package:flutter/material.dart';
import 'package:management/third.dart';
import 'first.dart';
import 'second.dart';

// class RoutuSetup {
//   Map<String, Widget Function(BuildContext)> setupRoute = {
//     '/': (context) => const firstRoute(),
//     '/second': (context) => const secondRoute(),
//   };
// }

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const firstRoute(),
  '/second': (context) => const secondRoute(),
  '/third': (context) => const Third(),
};
