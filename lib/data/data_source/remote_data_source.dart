import '../../shared/network/remote/app_api.dart';
import '../../shared/network/remote/requests.dart';
import '../responce/responses.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);

  Future<RegisterResponse> register(RegisterRequest registerRequest);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(
    this._appServiceClient,
  );

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return await _appServiceClient.login(
        loginRequest.username, loginRequest.password);
  }

  @override
  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    return await _appServiceClient.register(
        registerRequest.name,
        registerRequest.username,
        registerRequest.email,
        registerRequest.phone_1,
        registerRequest.phone_2,
        registerRequest.password,
        registerRequest.password_2,
        registerRequest.gender,
        registerRequest.identification_type,
        registerRequest.identification_number,
        registerRequest.identification_image,
        registerRequest.user_type,
        registerRequest.sign,
        registerRequest.personal_image,
        registerRequest.country);
  }
}
