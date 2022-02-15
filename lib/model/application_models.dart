import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    String? email,
    String? provider,
    String? idToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserData with _$UserData {
  factory UserData({
    required User user,
    required String firstName,
    required String lastName,
     String? companyName,
     String? addressCountry,
     String? addressStreet,
     String? addressZip,
     String? addressCity,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}