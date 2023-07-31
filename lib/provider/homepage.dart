import 'package:flutter/material.dart';
import 'package:management/provider/todo_provider.dart';
import 'package:management/third_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<TodoProvider>(context, listen: false).getAllTodos();
    });
    // Future.delayed(const Duration(milliseconds: 100), () {
    //   Provider.of<TodoProvider>(context, listen: false).getAllTodos();
    // });
    // callProvider();
  }

  callProvider() async{
    await TodoProvider().getAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    
      return Scaffold(
      appBar: AppBar(
        title: const Text('Provider API'),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => EligiblityScreen(),));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
            color: Colors.blueGrey),
            child: const Icon(Icons.add)),
        )),
      body: Consumer<TodoProvider>(
        builder: (context, value, child) {
          // If the loading it true then it will show the circular progressbar
          if (value.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          // If loading is false then this code will show the list of todo item
          // final todos = value.newTodo;
          return ListView.builder(
            itemCount: value.newTodo.length,
            itemBuilder: (context, index) {
              final todo = value.newTodo[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(todo.id.toString()),
                ),
                title: Text(
                  todo.title!,
                  style: TextStyle(
                    color: todo.completed! ? Colors.grey : Colors.black,
                  ),
                ),
              );
            },
          );
        },
      ));
  }
}