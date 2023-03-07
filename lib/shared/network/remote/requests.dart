import 'dart:io';

class LoginRequest {
  String username;
  String password;
  LoginRequest(
    this.username,
    this.password,
  );
}

class RegisterRequest {
  String name;
  String username;
  String email;
  String phone_1;
  String phone_2;
  String gender;
  String password;
  String password_2;
  String identification_type;
  String identification_number;
  File identification_image;
  String user_type;
  File sign;
  File personal_image;
  String country;
  RegisterRequest({
    required this.name,
    required this.username,
    required this.email,
    required this.phone_1,
    required this.phone_2,
    required this.gender,
    required this.password,
    required this.password_2,
    required this.identification_type,
    required this.identification_number,
    required this.identification_image,
    required this.user_type,
    required this.sign,
    required this.personal_image,
    required this.country,
  });
}
