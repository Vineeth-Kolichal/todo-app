part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.getAllTodos() = GetAllTodos;
  const factory TodoEvent.addTodo() = AddTodo;
  factory TodoEvent.deleteTodo(String id) = DeleteTodo;
  factory TodoEvent.updateTodoStatus(String id) = UpdateTodoStatus;
}
