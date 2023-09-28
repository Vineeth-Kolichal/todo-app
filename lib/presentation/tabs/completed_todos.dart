import 'package:flutter/material.dart';
import 'package:todo/data/models/all_todo_model/todo.dart';

import '../screens/home_screen/widgets/toto_list_tile.dart';
import '../widgets/export_common_widgets.dart';

class CompletedTab extends StatelessWidget {
  const CompletedTab({
    super.key,
    required this.completed,
  });
  final List<Todo> completed;
  @override
  Widget build(BuildContext context) {
    if (completed.isEmpty) {
      return const Center(
        child: Text("Completed list is empty"),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (context, index) {
            return TodoLitsTile(
              todo: completed[index],
            );
          },
          separatorBuilder: (context, index) => Space.y(10),
          itemCount: completed.length),
    );
  }
}
