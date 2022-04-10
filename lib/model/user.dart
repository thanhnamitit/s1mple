import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

enum Role { patient, doctor }

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String name,
    String? avatar,
    required Role role,
  }) = _User;
}
