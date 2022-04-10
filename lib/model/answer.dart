import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:share_widget/share_widget.dart';

import 'reply.dart';
import 'user.dart';

part 'answer.freezed.dart';

final timeFormat = DateFormat('hh:mm dd/MM/yyyy');

@freezed
class Answer with _$Answer {
  const Answer._();

  const factory Answer({
    required String id,
    required String content,
    required int votes,
    @Default(false) bool accepted,
    required User user,
    required DateTime dateTime,
    required List<Reply> replies,
  }) = _Answer;

  String get time => timeFormat.format(dateTime);
}
