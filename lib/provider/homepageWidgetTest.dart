import 'package:flutter/material.dart';
import 'package:management/provider/todo_provider.dart';
import 'package:provider/provider.dart';

class HomePageWidgetTest extends StatefulWidget {
  const HomePageWidgetTest({Key? key}) : super(key: key);

  @override
  State<HomePageWidgetTest> createState() => _HomePageWidgetTestState();
}

class _HomePageWidgetTestState extends State<HomePageWidgetTest> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TodoProvider>(context, listen: false).getAllTodos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider API'),
        ),
        body: Container(
          key: widget.key,
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), labelText: "Enter text"),
          ),
        ));
  }
}
