import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/models/add_todo_model/add_todo_model.dart';
import 'package:todo/data/repositories/todo_repository.dart';

import '../../data/models/all_todo_model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoRepository todoRepository;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController desciptionController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  TodoBloc(this.todoRepository) : super(TodoState.initial()) {
    on<TodoEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        completed: [],
        errorMsg: null,
        todoList: [],
        addStatus: null,
        deleteStatus: null,
        updataStatus: null,
      ));
      final newstate = await returnNewState();
      emit(newstate);
    });

    on<AddTodo>((event, emit) async {
      emit(state.copyWith(addStatus: null));
      final result = await todoRepository.addTodo(AddTodoModel(
          title: titleController.text.trim(),
          description: desciptionController.text.trim()));
      titleController.clear();
      desciptionController.clear();

      final newstate = await returnNewState(addStatus: result);
      emit(newstate);
    });
    on<UpdateTodoStatus>((event, emit) async {
      emit(state.copyWith(updataStatus: null));
      final result = await todoRepository.updateStatus(event.id);
      final newstate = await returnNewState(updateStatus: result);
      emit(newstate);
    });
    on<DeleteTodo>((event, emit) async {
      final result = await todoRepository.deleteTodo(event.id);
      final newstate = await returnNewState(deleteStatus: result);
      emit(newstate);
    });
  }
  Future<TodoState> returnNewState(
      {String? addStatus, String? deleteStatus, String? updateStatus}) async {
    final response = await todoRepository.getAllTodos();
    final newState = response.fold((msg) {
      if (msg != null) {
        return state.copyWith(
          isLoading: false,
          hasError: false,
          errorMsg: msg,
          completed: [],
          todoList: [],
          addStatus: addStatus,
          updataStatus: updateStatus,
          deleteStatus: deleteStatus,
        );
      } else {
        return state.copyWith(
          isLoading: false,
          hasError: true,
          completed: [],
          todoList: [],
          addStatus: addStatus,
          updataStatus: updateStatus,
          deleteStatus: deleteStatus,
        );
      }
    }, (allTodo) {
      List<Todo> allTodos = allTodo.todos;
      List<Todo> completed = [];
      List<Todo> todoList = [];
      for (var i = 0; i < allTodos.length; i++) {
        if (allTodos[i].isCompleted!) {
          completed.add(allTodos[i]);
        } else {
          todoList.add(allTodos[i]);
        }
      }
      return state.copyWith(
        isLoading: false,
        hasError: false,
        completed: completed,
        todoList: todoList,
        userName: allTodo.user ?? '',
        addStatus: addStatus,
        updataStatus: updateStatus,
        deleteStatus: deleteStatus,
      );
    });
    return newState;
  }

  @override
  Future<void> close() {
    titleController.dispose();
    desciptionController.dispose();
    return super.close();
  }
}
