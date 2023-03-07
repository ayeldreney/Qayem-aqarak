import 'package:dartz/dartz.dart';
import 'package:project/data/mapper/mapper.dart';

import '../../models/models.dart';
import '../../repository/repository.dart';
import '../../shared/network/remote/faliure.dart';
import '../../shared/network/remote/requests.dart';
import '../data_source/remote_data_source.dart';
import '../responce/responses.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;

  RepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<Failure, AuthanticationModel>> login(
      LoginRequest loginRequest) async {
    try {
      final response = await _remoteDataSource.login(loginRequest);

      return right(response.toDomain());
      // print(response.access);
    } catch (error) {
      //use error handler
      return left(Failure(404, "error"));
    }
  }

  RegisterResponse? registerModel;

  @override
  Future register(RegisterRequest registerRequest) async {
    try {
      final response = await _remoteDataSource.register(registerRequest);
      RegisterResponse.fromJson(response.toJson());
      registerModel = RegisterResponse.fromJson(response.toJson());

      if (response.name != null) {
        return response;
      } else {
        return response;
      }
    } catch (error) {}
  }
}
