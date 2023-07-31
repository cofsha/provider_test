// ignore: camel_case_types
import 'package:flutter/material.dart';

class secondRoute extends StatelessWidget {
  const secondRoute({Key? key}) : super(key: key);

  @override
// ignore: dead_code
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text("GFG Second Route"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Column(
            children: [
              Text(
                "This is the data ${arguments['testString']}",
                style: TextStyle(color: Colors.black),
              ),
              // arraySample
              Text(
                "This is the data ${arguments['arraySample'].first}",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "This is the data ${arguments['arraySample'].first}",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "This is route ${ModalRoute.of(context)!.settings.name}",
                style: TextStyle(color: Colors.black),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                  child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.red,
                      child: const Text("Navigate"))),
              const SizedBox(
                height: 10,
              ),
              const Text('Go back!'),
            ],
          ),
        ), // ElevatedButton
      ),

      // RaisedButton is deprecated now
      // child: RaisedButton(
      // onPressed: () {
      //	 Navigator.pop(context);
      // },
      // child: const Text('Go back!'),
      // ),
    );
  }
}
