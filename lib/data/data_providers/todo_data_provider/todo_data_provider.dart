import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/models/add_todo_model/add_todo_model.dart';
import 'package:todo/data/models/all_todo_model/all_todo_model.dart';
import 'package:todo/data/repositories/todo_repository.dart';
import 'package:todo/utils/api_endpoints/api_endpoints.dart';

@LazySingleton(as: TodoRepository)
@injectable
class TodoDataProvider implements TodoRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;

  TodoDataProvider(this.dio, this.secureStorage);
  @override
  Future<Either<String?, AllTodoModel>> getAllTodos() async {
    try {
      final token = await secureStorage.read(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
      final response = await dio.get(ApiEndpoints.getAllTodo);
      if (response.statusCode == 200) {
        return Right(AllTodoModel.fromJson(response.data));
      } else {
        return const Left(null);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Left(e.response?.data['message']);
      } else {
        return const Left(null);
      }
    }
  }

  @override
  Future<String> addTodo(AddTodoModel addTodoModel) async {
    try {
      final token = await secureStorage.read(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
      final response =
          await dio.post(ApiEndpoints.addTodoUrl, data: addTodoModel.toJson());
      if (response.statusCode == 201) {
        return response.data['message'];
      } else {
        return "Error while adding todo";
      }
    } catch (e) {
      return "Error while adding todo";
    }
  }

  @override
  Future<String> deleteTodo(String id) async {
    try {
      final token = await secureStorage.read(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
      final response = await dio.delete('${ApiEndpoints.deleteTodo}/$id');
      if (response.statusCode == 200) {
        return response.data['message'];
      } else {
        return "Error while deleting todo";
      }
    } catch (e) {
      return "Error while deleting todo";
    }
  }

  @override
  Future<String> updateStatus(String id) async {
    try {
      final token = await secureStorage.read(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
      final response = await dio.patch('${ApiEndpoints.updateStatus}/$id',
          data: {"isCompleted": true});
      if (response.statusCode == 201) {
        return response.data['message'];
      } else {
        return "Error while updating status";
      }
    } catch (e) {
      return "Error while updating status";
    }
  }
}
