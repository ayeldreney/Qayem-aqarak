class RegisterModel {
  String name;
  String username;
  String email;
  String phone_1;
  String phone_2;
  String gender;

  String identification_type;
  String identification_number;
  String identification_image;
  String user_type;
  String sign;
  String personal_image;
  String country;
  RegisterModel({
    required this.name,
    required this.username,
    required this.email,
    required this.phone_1,
    required this.phone_2,
    required this.gender,
    required this.identification_type,
    required this.identification_number,
    required this.identification_image,
    required this.user_type,
    required this.sign,
    required this.personal_image,
    required this.country,
  });
}

class AuthanticationModel {
  String access;
  String refresh;
  AuthanticationModel({
    required this.access,
    required this.refresh,
  });
}
