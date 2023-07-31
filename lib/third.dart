import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => ThirdState();
}

class ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      child: Text("This is third screen"),
    ));
  }
}
