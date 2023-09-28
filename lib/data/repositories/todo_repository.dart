import 'package:dartz/dartz.dart';
import 'package:todo/data/models/all_todo_model/all_todo_model.dart';

abstract class TodoRepository{
  Future<Either< String?,AllTodoModel>> getAllTodos();
}