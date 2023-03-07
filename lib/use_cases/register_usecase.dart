import '../repository/repository.dart';
import '../shared/network/remote/requests.dart';

class RegisterUseCase {
  final Repository _repository;
  RegisterUseCase(
    this._repository,
  );

  Future execude(RegisterRequest input) async {
    return await _repository.register(input);
  }
}
