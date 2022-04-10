import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'user.dart';

part 'question.freezed.dart';

final timeFormat = DateFormat('hh:mm dd/MM/yyyy');

@freezed
class Question with _$Question {
  const Question._();

  const factory Question({
    required String title,
    required String content,
    required int votes,
    required int answers,
    required int views,
    List<String>? tags,
    List<String>? images,
    required User user,
    required DateTime dateTime,
    @Default([]) List<String> voted,
    @Default([]) List<String> devoted,
  }) = _Question;

  String get time => timeFormat.format(dateTime);
}
