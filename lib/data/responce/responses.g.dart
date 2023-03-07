part of 'responses.dart';

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      json['access'] as String?,
      json['refresh'] as String?,
    );

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      json['country'] as String?,
      json['email'] as String?,
      json['gender'] as String?,
      json['id'] as String?,
      json['identification_image'] as String?,
      json['identification_number'] as String?,
      json['identification_type'] as String?,
      json['is_verified'] as bool?,
      json['name'] as String?,
      json['personal_image'] as String?,
      json['phone_1'] as String?,
      json['phone_2'] as String?,
      json['sign'] as String?,
      json['user_type'] as String?,
      json['username'] as String?,
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'phone_1': instance.phone_1,
      'phone_2': instance.phone_2,
      'gender': instance.gender,
      'identification_type': instance.identification_type,
      'identification_number': instance.identification_number,
      'identification_image': instance.identification_image,
      'user_type': instance.user_type,
      'sign': instance.sign,
      'personal_image': instance.personal_image,
      'country': instance.country,
      'is_verified': instance.is_verified,
    };
