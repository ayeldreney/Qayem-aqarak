import 'package:dartz/dartz.dart';

import '../models/models.dart';
import '../shared/network/remote/faliure.dart';
import '../shared/network/remote/requests.dart';

abstract class Repository {
  Future<Either<Failure, AuthanticationModel>> login(LoginRequest loginRequest);
  Future register(RegisterRequest registerRequest);
}
