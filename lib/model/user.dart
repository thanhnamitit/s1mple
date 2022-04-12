import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

enum Role { patient, doctor, ai }

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    String? avatar,
    required Role role,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
