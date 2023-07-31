// import 'package:flutter/material.dart';
// import 'package:management/routesetup.dart';
// import 'package:management/second.dart';

// import 'first.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Named Routes',
//     initialRoute: '/',
//     routes: customRoutes,
//     // {
//     //   '/': (context) => const firstRoute(),
//     //   '/second': (context) => const secondRoute(),
//     // },
//   ));
// }


import 'package:management/provider/homepage.dart';
import 'package:management/provider/todo_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
  providers: [
      ChangeNotifierProvider<TodoProvider>(
        create: (_) => TodoProvider(),
      ),
      ChangeNotifierProvider<TodoProvider >(
        create: (_) => TodoProvider() ,
      ),
  ],
  child: 
      const MaterialApp(
        home: 
        // BatteryLevel()
        HomePage(),
        // HomePageWidgetTest(),
      ),);
    // ChangeNotifierProvider(
    //   create: (context) {
    //     return TodoProvider();
    //   },
    //   child: 
    //   const MaterialApp(
    //     home: 
    //     // BatteryLevel()
    //     HomePage(),
    //     // HomePageWidgetTest(),
    //   ),
    // );
  }
}
