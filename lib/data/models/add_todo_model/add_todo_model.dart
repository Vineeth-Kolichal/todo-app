import 'package:json_annotation/json_annotation.dart';

part 'add_todo_model.g.dart';

@JsonSerializable()
class AddTodoModel {
 final  String title;
 final String description;

  AddTodoModel({ required this.title,required this.description});

  factory AddTodoModel.fromJson(Map<String, dynamic> json) {
    return _$AddTodoModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddTodoModelToJson(this);
}
