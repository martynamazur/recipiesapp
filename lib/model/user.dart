import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    int? id,
    required String username,
    required String email,
    required String password,
    DateTime? registrationDate,
}) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) => _$AppUserFromJson(json);


}
