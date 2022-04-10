import 'package:injectable/injectable.dart';
import 'package:share_widget/share_widget.dart';

import '../../../core/cubit_with_subscriptions.dart';
import '../../../domain/observe_to_questions_use_case.dart';
import 'forum_home_state.dart';

@injectable
class ForumHomeBloc extends CubitWithSubscriptions<ForumHomeState> {
  final ObserveToQuestionsUseCase _observeToQuestionsUseCase;

  ForumHomeBloc(this._observeToQuestionsUseCase) : super(ForumHomeState());

  void setup() {
    final sub = _observeToQuestionsUseCase().listen((_) {
      emit(state.copyWith(questions: Async.success(_)));
    });
    cancelAllSubscriptions();
    addSubscriptions(sub);
  }
}
