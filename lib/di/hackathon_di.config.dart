// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/observe_to_answers_use_case.dart' as _i4;
import '../domain/observe_to_question_use_case.dart' as _i5;
import '../domain/observe_to_questions_use_case.dart' as _i6;
import '../domain/submit_question_use_case.dart' as _i10;
import '../model/question.dart' as _i8;
import '../model/user.dart' as _i9;
import '../ui/screen/create_question/create_question_bloc.dart' as _i11;
import '../ui/screen/forum_home/forum_home_bloc.dart' as _i12;
import '../ui/screen/question_detail/question_detail_bloc.dart' as _i7;
import 'module.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FirebaseFirestore>(registerModule.firebaseFirestore);
  gh.factory<_i4.ObserveToAnswersUseCase>(
      () => _i4.ObserveToAnswersUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i5.ObserveToQuestionUseCase>(
      () => _i5.ObserveToQuestionUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i6.ObserveToQuestionsUseCase>(
      () => _i6.ObserveToQuestionsUseCase(get<_i3.FirebaseFirestore>()));
  gh.factoryParam<_i7.QuestionDetailBloc, _i8.Question?, _i9.User?>(
      (question, user) => _i7.QuestionDetailBloc(
          question,
          user,
          get<_i4.ObserveToAnswersUseCase>(),
          get<_i5.ObserveToQuestionUseCase>()));
  gh.factory<_i10.SubmitQuestionUseCase>(
      () => _i10.SubmitQuestionUseCase(get<_i3.FirebaseFirestore>()));
  gh.factoryParam<_i11.CreateQuestionBloc, _i9.User?, dynamic>((user, _) =>
      _i11.CreateQuestionBloc(user, get<_i10.SubmitQuestionUseCase>()));
  gh.factory<_i12.ForumHomeBloc>(
      () => _i12.ForumHomeBloc(get<_i6.ObserveToQuestionsUseCase>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
