import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:management/provider/todo_model.dart';

class TodoService {
  
  Future<List<Todo>> getAll() async {
    const url = 'https://jsonplaceholder.typicode.com/todos';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as List;
      final todos = json.map((e) {
        return Todo(
          id: e['id'],
          title: e['title'],
          userId: e['userId'],
          completed: e['completed'],
        );
      }).toList();
      return todos;
    }
    return [];
  }
}



// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:management/provider/todo_model.dart';

// class TodoService {
//   Todo todosModel = Todo();
  
//   // var todosModel;
//   getAll() async {
//     print("entered in method");
//     try {
//     const url = 'https://jsonplaceholder.typicode.com/todos';
//     final uri = Uri.parse(url);
//     print("entered in second");
//     final response = await http.get(uri);
//     print("this is response ${response}");
//     if (response.statusCode == 200) {
//       var result = jsonDecode(response.body);
//       print("this is before response ${result}");
//       todosModel = Todo.fromJson(result);
//       print("this is the response ${todosModel}");
//       final todoSend = todosModel;
//       // final json = jsonDecode(response.body) as List;
//       // final todos = json.map((e) {
//       //   return Todo(
//       //     id: e['id'],
//       //     title: e['title'],
//       //     userId: e['userId'],
//       //     completed: e['completed'],
//       //   );
//       // }).toList();
//       return todoSend;
//     }
//     return [];
//     } catch (e) {
//       print("this is error ${e}");
//     }
//   }
// }