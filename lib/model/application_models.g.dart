// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      idToken: json['idToken'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'provider': instance.provider,
      'idToken': instance.idToken,
    };

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      companyName: json['companyName'] as String?,
      addressCountry: json['addressCountry'] as String?,
      addressStreet: json['addressStreet'] as String?,
      addressZip: json['addressZip'] as String?,
      addressCity: json['addressCity'] as String?,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'user': instance.user,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'companyName': instance.companyName,
      'addressCountry': instance.addressCountry,
      'addressStreet': instance.addressStreet,
      'addressZip': instance.addressZip,
      'addressCity': instance.addressCity,
    };
