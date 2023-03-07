import 'package:dartz/dartz.dart';

import '../models/models.dart';
import '../repository/repository.dart';
import '../shared/network/remote/faliure.dart';
import '../shared/network/remote/requests.dart';

class LoginUseCase {
  final Repository _repository;
  LoginUseCase(
    this._repository,
  );

  Future<Either<Failure, AuthanticationModel>> execude(
      LoginRequest input) async {
    return await _repository
        .login(LoginRequest(input.username, input.password));
  }
}
