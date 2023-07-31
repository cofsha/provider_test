// ignore: camel_case_types
import 'package:flutter/material.dart';

class firstRoute extends StatelessWidget {
  const firstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GFG First Route'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second', arguments: {
              'testString': 'Name',
              'arraySample': [25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35]
            });
          },
        ), // Elevated

        // RaisedButton is deprecated now
        // child: RaisedButton(
        // child: const Text('Launch screen'),
        // onPressed: () {
        //	 Navigator.pushNamed(context, '/second');
        // },
        // ),
      ),
    );
  }
}
