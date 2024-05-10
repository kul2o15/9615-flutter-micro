import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../constants/api_path.dart';
import '../models/todos.model.dart';
import '../models/user.model.dart';

part 'api_client.g.dart';

@lazySingleton
@RestApi(baseUrl: ApiPath.baseUrl)
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) = _ApiClient;

  @GET(ApiPath.todos)
  Future<List<TodosModel>> getTodos();

  @GET(ApiPath.users)
  Future<List<UserModel>> getUsers();
}
