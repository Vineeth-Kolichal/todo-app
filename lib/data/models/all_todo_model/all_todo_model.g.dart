// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllTodoModel _$AllTodoModelFromJson(Map<String, dynamic> json) => AllTodoModel(
      message: json['message'] as String?,
      user: json['user'] as String?,
      count: json['count'] as int?,
      todos: (json['todos'] as List<dynamic>?)
              ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AllTodoModelToJson(AllTodoModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
      'count': instance.count,
      'todos': instance.todos,
    };
