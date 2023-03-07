import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class AuthenticationResponse {
  @JsonKey(name: "access")
  String? access;
  @JsonKey(name: "refresh")
  String? refresh;
  AuthenticationResponse(this.access, this.refresh);
  //from json
  factory AuthenticationResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationResponseFromJson(json);
//to json
  Map<String, dynamic> toJson() => _$AuthenticationResponseToJson(this);
}

@JsonSerializable()
class RegisterResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "username")
  String? username;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone_1")
  String? phone_1;
  @JsonKey(name: "phone_2")
  String? phone_2;
  @JsonKey(name: "gender")
  String? gender;
  @JsonKey(name: "identification_type")
  String? identification_type;
  @JsonKey(name: "identification_number")
  String? identification_number;
  @JsonKey(name: "identification_image")
  String? identification_image;
  @JsonKey(name: "user_type")
  String? user_type;
  @JsonKey(name: "sign")
  String? sign;
  @JsonKey(name: "personal_image")
  String? personal_image;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "is_verified")
  bool? is_verified;

  RegisterResponse(
      this.country,
      this.email,
      this.gender,
      this.id,
      this.identification_image,
      this.identification_number,
      this.identification_type,
      this.is_verified,
      this.name,
      this.personal_image,
      this.phone_1,
      this.phone_2,
      this.sign,
      this.user_type,
      this.username);
  //from json
  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);
//to json
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}
