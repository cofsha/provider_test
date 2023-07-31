import 'package:flutter/material.dart';
import 'package:management/provider/todo_model.dart';
import 'package:management/provider/todo_services.dart';

class TodoProvider extends ChangeNotifier {
  final _service = TodoService();
  bool isLoading = false;
  List<Todo> _todos = [];
  List<Todo> newTodo = [];
  List<Todo> get todos => _todos;

  Future<void> getAllTodos() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();
    // _todos = response;
    newTodo = response;
    isLoading = false;
    notifyListeners();
  }
}
