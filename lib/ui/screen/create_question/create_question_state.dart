import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_widget/share_widget.dart';

import '../../../model/question.dart';

part 'create_question_state.freezed.dart';

@freezed
class CreateQuestionState with _$CreateQuestionState {
  const factory CreateQuestionState({
    @Default([]) List<String> images,
    @Default(false) bool anonymous,
    Async<Question>? submitting,
  }) = _CreateQuestionState;
}
