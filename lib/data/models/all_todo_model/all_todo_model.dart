import 'package:json_annotation/json_annotation.dart';

import 'todo.dart';

part 'all_todo_model.g.dart';

@JsonSerializable()
class AllTodoModel {
  String? message;
  String? user;
  int? count;
  final List<Todo> todos;

  AllTodoModel({this.message, this.user, this.count, this.todos = const []});

  factory AllTodoModel.fromJson(Map<String, dynamic> json) {
    return _$AllTodoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllTodoModelToJson(this);
}
