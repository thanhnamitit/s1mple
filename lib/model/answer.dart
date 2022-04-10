import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/base_update_voted_use_case.dart';
import 'reply.dart';
import 'user.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';


@freezed
class Answer with _$Answer {
  const Answer._();

  @JsonSerializable(explicitToJson: true)
  const factory Answer({
    String? id,
    required String content,
    @Default(false) bool accepted,
    required User user,
    required DateTime dateTime,
    List<Reply>? replies,
    @Default([]) List<String> voted,
    @Default([]) List<String> devoted,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  int get votes => voted.length - devoted.length;

}
