import 'dart:io';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';

import '../../../data/responce/responses.dart';
import '../../components/utils/constants.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/api/users/login/")
  Future<AuthenticationResponse> login(
      @Field("username") String email, @Field("password") String password);

  @POST("/api/users/register/")
  @MultiPart()
  Future<RegisterResponse> register(
    @Part(/* "name" */) String name,
    @Part(/* "username" */) String username,
    @Part(/* "email" */) String email,
    @Part(/* "phone_1" */) String phone_1,
    @Part(/* "phone_2" */) String phone_2,
    @Part(/* "password" */) String password,
    @Part(/* "password_2" */) String password_2,
    @Part(/* "gender" */) String gender,
    @Part(/* "identification_type" */) String identification_type,
    @Part(/* "identification_number" */) String identification_number,
    @Part(/* "identification_image" */) File? identification_image,
    @Part(/* "user_type " */) String user_type,
    @Part(/* "sign" */) File? sign,
    @Part(/* "personal_image" */) File? personal_image,
    @Part(/* "country" */) String country,
  );
}
