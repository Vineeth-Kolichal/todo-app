import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:todo/business_logic/todo/todo_bloc.dart';

import '../../../../data/models/all_todo_model/todo.dart';
import '../../../widgets/export_common_widgets.dart';

class TodoLitsTile extends StatelessWidget {
  const TodoLitsTile({
    super.key,
    required this.todo,
  });
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final DateTime createdDate = todo.createdAt!;
    final String createdDateFormatted =
        DateFormat("d MMM yyyy").format(createdDate);
    final DateTime updatedDate = todo.updatedAt!;
    final String updatedDateFormatted =
        DateFormat("d MMM yyyy").format(updatedDate);
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  todo.title ?? '',
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w700),
                ),
                const Spacer(),
                Visibility(
                  visible: !(todo.isCompleted ?? false),
                  child: IconButton(
                      onPressed: () {
                        context
                            .read<TodoBloc>()
                            .add(UpdateTodoStatus(todo.id!));
                      },
                      icon: const Icon(
                        Iconsax.tick_circle,
                        color: Color.fromARGB(255, 189, 188, 188),
                      )),
                ),
                IconButton(
                  onPressed: () {
                    context.read<TodoBloc>().add(DeleteTodo(todo.id!));
                  },
                  icon: const Icon(
                    Iconsax.trash,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            Space.y(10),
            Row(
              children: [
                const Icon(
                  Iconsax.calendar_1,
                  size: 13,
                  color: Colors.grey,
                ),
                Text(
                  !todo.isCompleted! ? 'Created On : ' : "Completed On : ",
                  style: const TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text(!todo.isCompleted!
                    ? createdDateFormatted
                    : updatedDateFormatted)
              ],
            ),
            Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: ExpansionTile(
                expandedAlignment: Alignment.topLeft,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: EdgeInsets.zero,
                title: const Text(
                  'Description',
                  style: TextStyle(fontSize: 13),
                ),
                children: [
                  Text(todo.description ?? ''),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
