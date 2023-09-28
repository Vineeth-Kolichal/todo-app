import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
    return Container(
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    todo.title ?? '',
                    style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  Space.y(10),
                  const Row(
                    children: [
                      Icon(
                        Iconsax.calendar_1,
                        size: 13,
                        color: Colors.grey,
                      ),
                      Text(
                        'Created On :',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
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
            Row(
              children: [
                Visibility(
                  visible: !(todo.isCompleted ?? false),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.tick_circle,
                        color: Color.fromARGB(255, 189, 188, 188),
                      )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Iconsax.trash,
                      color: Colors.red,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
