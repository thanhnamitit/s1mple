import 'package:injectable/injectable.dart';
import 'package:share_widget/share_widget.dart';

import '../../../core/cubit_with_subscriptions.dart';
import '../../../domain/base_update_voted_use_case.dart';
import '../../../domain/observe_to_answers_use_case.dart';
import '../../../domain/observe_to_question_use_case.dart';
import '../../../domain/submit_answer_use_case.dart';
import '../../../domain/update_comment_voted_use_case.dart';
import '../../../domain/update_question_vote_use_case.dart';
import '../../../model/answer.dart';
import '../../../model/question.dart';
import '../../../model/user.dart';
import 'question_detail_state.dart';

@injectable
class QuestionDetailBloc extends CubitWithSubscriptions<QuestionDetailState> {
  final ObserveToAnswersUseCase observeToAnswersUseCase;
  final ObserveToQuestionUseCase observeToQuestionUseCase;
  final SubmitAnswerUseCase submitAnswerUseCase;
  final UpdateQuestionVoteUseCase updateQuestionVoteUseCase;
  final UpdateCommentVotedUseCase updateCommentVotedUseCase;
  final User user;

  QuestionDetailBloc(
    @factoryParam Question? question,
    @factoryParam User? user,
    this.observeToAnswersUseCase,
    this.observeToQuestionUseCase,
    this.submitAnswerUseCase,
    this.updateQuestionVoteUseCase,
    this.updateCommentVotedUseCase,
  )   : user = user!,
        super(QuestionDetailState(question: question!));

  void setup() {
    final questionId = state.question.id;
    if (questionId != null) {
      addSubscriptions(observeToQuestionUseCase(questionId).listen((_) {
        emit(state.copyWith(question: _));
      }));
      addSubscriptions(observeToAnswersUseCase(questionId).listen((_) {
        emit(state.copyWith(answers: Async.success(_)));
      }));
    }
  }

  void submitAnswer(String text) {
    execute(submitAnswerUseCase(
      user: user,
      content: text,
      questionId: state.question.id!,
    )).listen((_) {
      emit(state.copyWith(submittingAnswer: _));
    });
  }

  void vote(VoteType type) {
    execute(
      updateQuestionVoteUseCase(
        type: type,
        userId: user.id,
        question: state.question,
      ),
    ).listen((_) {
      emit(state.copyWith(votingQuestion: _));
    });
  }

  void voteAnswer(VoteType type, Answer answer) {
    emit(state.copyWith(votingAnswer: Async.loading(data: answer)));
    execute(
      updateCommentVotedUseCase(
        type: type,
        userId: user.id,
        questionId: state.question.id!,
        answer: answer,
      ),
    ).listen((_) {
      if (_ is! Loading) {
        emit(state.copyWith(votingAnswer: _));
      }
    });
  }
}
