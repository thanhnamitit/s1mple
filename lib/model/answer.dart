import 'package:freezed_annotation/freezed_annotation.dart';

import 'reply.dart';
import 'user.dart';

part 'answer.freezed.dart';

part 'answer.g.dart';

enum AnswerType { none, loading, aiPredict }

@freezed
class Specification with _$Specification {
  const Specification._();

  @JsonSerializable(explicitToJson: true)
  const factory Specification({
    required String code,
    required String name,
  }) = _Specification;

  factory Specification.fromJson(Map<String, dynamic> json) =>
      _$SpecificationFromJson(json);
}

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
    AnswerType? type,
    List<Specification>? specifications,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);

  int get votes => voted.length - devoted.length;
}
