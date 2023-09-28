import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../business_logic/todo/todo_bloc.dart';
import '../../../widgets/export_common_widgets.dart';

Future<dynamic> addTodoBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    showDragHandle: true,
    isScrollControlled: true,
    context: context,
    builder: (context) {
      final todoBloc = context.read<TodoBloc>();
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Form(
                key: todoBloc.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add Todo',
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              todoBloc.desciptionController.clear();
                              todoBloc.titleController.clear();
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Iconsax.close_circle))
                      ],
                    ),
                    CustomTextFormField(
                        keyboardType: TextInputType.text,
                        hintText: 'Title',
                        controller: todoBloc.titleController),
                    CustomTextFormField(
                      keyboardType: TextInputType.multiline,
                      hintText: 'Desctiption',
                      controller: todoBloc.desciptionController,
                      maxlines: 7,
                    ),
                    CustomElevatedButton(
                      buttonLabel: 'Add Todo',
                      onPressed: () {
                        if (todoBloc.formKey.currentState!.validate()) {
                          todoBloc.add(const AddTodo());
                          Navigator.of(context).pop();
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
