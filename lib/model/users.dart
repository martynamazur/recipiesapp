import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.freezed.dart';

part 'users.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String username,
    required String email,
    required String password,
    required DateTime registrationDate,
}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

}
