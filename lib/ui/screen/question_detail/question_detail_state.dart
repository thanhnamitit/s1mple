import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_widget/share_widget.dart';

import '../../../model/answer.dart';
import '../../../model/question.dart';

part 'question_detail_state.freezed.dart';

@freezed
class QuestionDetailState with _$QuestionDetailState {
  const factory QuestionDetailState({
    required Question question,
    @Default(Async.loading()) Async<List<Answer>> answers,
  }) = _QuestionDetailState;
}
