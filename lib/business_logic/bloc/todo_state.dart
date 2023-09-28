part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState(
      {required bool isLoading,
      required bool hasError,
      required List<Todo> todoList,
      required List<Todo> completed,
      required String userName,
      String? errorMsg,
      }) = _Initial;
  factory TodoState.initial() => const  TodoState(
      isLoading: false,
      hasError: false,completed: [],todoList: [],userName: 'Hi',errorMsg: null
      );
}
