import 'package:injectable/injectable.dart';
import 'package:share_widget/share_widget.dart';

import '../../../core/cubit_with_subscriptions.dart';
import '../../../domain/observe_to_answers_use_case.dart';
import '../../../domain/observe_to_question_use_case.dart';
import '../../../model/question.dart';
import '../../../model/user.dart';
import 'question_detail_state.dart';

@injectable
class QuestionDetailBloc extends CubitWithSubscriptions<QuestionDetailState> {
  final ObserveToAnswersUseCase observeToAnswersUseCase;
  final ObserveToQuestionUseCase observeToQuestionUseCase;
  final User user;

  QuestionDetailBloc(
    @factoryParam Question? question,
    @factoryParam User? user,
    this.observeToAnswersUseCase,
    this.observeToQuestionUseCase,
  )   : user = user!,
        super(QuestionDetailState(question: question!));

  void setup() {
    final question = state.question;
    addSubscriptions(observeToQuestionUseCase().listen((_) {
      state.copyWith(question: _);
    }));
    addSubscriptions(observeToAnswersUseCase().listen((_) {
      state.copyWith(answers: Async.success(_));
    }));
  }
}
