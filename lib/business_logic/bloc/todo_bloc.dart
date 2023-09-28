import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/repositories/todo_repository.dart';

import '../../data/models/all_todo_model/todo.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoRepository todoRepository;
  TodoBloc(this.todoRepository) : super(TodoState.initial()) {
    on<TodoEvent>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        completed: [],
        errorMsg: null,
        todoList: [],
      ));

      final response = await todoRepository.getAllTodos();
      final newState = response.fold((msg) {
        if (msg != null) {
          return state.copyWith(
              isLoading: false,
              hasError: false,
              errorMsg: msg,
              completed: [],
              todoList: []);
        } else {
          return state.copyWith(
            isLoading: false,
            hasError: true,
            completed: [],
            todoList: [],
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
            userName: allTodo.user ?? '');
      });
      emit(newState);
    });
  }
}
