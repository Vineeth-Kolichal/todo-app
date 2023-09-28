import 'package:flutter/material.dart';

import '../../data/models/all_todo_model/todo.dart';
import '../screens/home_screen/widgets/toto_list_tile.dart';
import '../widgets/export_common_widgets.dart';

class TodoTab extends StatelessWidget {
  const TodoTab({
    super.key,
    required this.todoList,
  });
  final List<Todo> todoList;

  @override
  Widget build(BuildContext context) {
    if (todoList.isEmpty) {
      return const Center(
        child: Text("Todo list is empty"),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return TodoLitsTile(
              todo: todoList[index],
            );
          },
          separatorBuilder: (context, index) => Space.y(10),
          itemCount: todoList.length),
    );
  }
}
