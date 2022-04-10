import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import 'user.dart';

part 'reply.freezed.dart';

final timeFormat = DateFormat('hh:mm dd/MM/yyyy');

@freezed
class Reply with _$Reply {
  const Reply._();

  const factory Reply({
    required String content,
    required User user,
    required DateTime dateTime,
  }) = _Reply;

  String get time => timeFormat.format(dateTime);
}
