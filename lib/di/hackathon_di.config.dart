// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/base_update_voted_use_case.dart' as _i12;
import '../domain/observe_to_answers_use_case.dart' as _i5;
import '../domain/observe_to_question_use_case.dart' as _i6;
import '../domain/observe_to_questions_use_case.dart' as _i7;
import '../domain/submit_answer_use_case.dart' as _i8;
import '../domain/submit_question_use_case.dart' as _i9;
import '../domain/update_comment_voted_use_case.dart' as _i10;
import '../domain/update_question_vote_use_case.dart' as _i11;
import '../model/question.dart' as _i17;
import '../model/user.dart' as _i14;
import '../ui/screen/create_question/create_question_bloc.dart' as _i13;
import '../ui/screen/forum_home/forum_home_bloc.dart' as _i15;
import '../ui/screen/question_detail/question_detail_bloc.dart' as _i16;
import 'module.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FirebaseFirestore>(registerModule.firebaseFirestore);
  gh.singleton<_i4.FirebaseStorage>(registerModule.firebaseStorage);
  gh.factory<_i5.ObserveToAnswersUseCase>(
      () => _i5.ObserveToAnswersUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i6.ObserveToQuestionUseCase>(
      () => _i6.ObserveToQuestionUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i7.ObserveToQuestionsUseCase>(
      () => _i7.ObserveToQuestionsUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i8.SubmitAnswerUseCase>(
      () => _i8.SubmitAnswerUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i9.SubmitQuestionUseCase>(() => _i9.SubmitQuestionUseCase(
      get<_i3.FirebaseFirestore>(), get<_i4.FirebaseStorage>()));
  gh.factory<_i10.UpdateCommentVotedUseCase>(
      () => _i10.UpdateCommentVotedUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i11.UpdateQuestionVoteUseCase>(
      () => _i11.UpdateQuestionVoteUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i12.BaseUpdateVotedUseCase>(
      () => _i12.BaseUpdateVotedUseCase(get<_i3.FirebaseFirestore>()));
  gh.factoryParam<_i13.CreateQuestionBloc, _i14.User?, dynamic>((user, _) =>
      _i13.CreateQuestionBloc(user, get<_i9.SubmitQuestionUseCase>()));
  gh.factory<_i15.ForumHomeBloc>(
      () => _i15.ForumHomeBloc(get<_i7.ObserveToQuestionsUseCase>()));
  gh.factoryParam<_i16.QuestionDetailBloc, _i17.Question?, _i14.User?>(
      (question, user) => _i16.QuestionDetailBloc(
          question,
          user,
          get<_i5.ObserveToAnswersUseCase>(),
          get<_i6.ObserveToQuestionUseCase>(),
          get<_i8.SubmitAnswerUseCase>(),
          get<_i11.UpdateQuestionVoteUseCase>(),
          get<_i10.UpdateCommentVotedUseCase>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
