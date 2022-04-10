import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_widget/share_widget.dart';

import '../../../model/question.dart';

part 'forum_home_state.freezed.dart';

@freezed
class ForumHomeState with _$ForumHomeState {
  const factory ForumHomeState({
    @Default(Async.loading()) Async<List<Question>> questions,
  }) = _ForumHomeState;
}
