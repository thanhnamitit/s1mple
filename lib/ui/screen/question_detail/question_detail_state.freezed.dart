// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionDetailStateTearOff {
  const _$QuestionDetailStateTearOff();

  _QuestionDetailState call(
      {required Question question,
      Async<List<Answer>> answers = const Async.loading(),
      Async<Answer>? submittingAnswer,
      Async<Reply>? submittingReply,
      Async<Question>? votingQuestion,
      Async<Answer>? votingAnswer}) {
    return _QuestionDetailState(
      question: question,
      answers: answers,
      submittingAnswer: submittingAnswer,
      submittingReply: submittingReply,
      votingQuestion: votingQuestion,
      votingAnswer: votingAnswer,
    );
  }
}

/// @nodoc
const $QuestionDetailState = _$QuestionDetailStateTearOff();

/// @nodoc
mixin _$QuestionDetailState {
  Question get question => throw _privateConstructorUsedError;
  Async<List<Answer>> get answers => throw _privateConstructorUsedError;
  Async<Answer>? get submittingAnswer => throw _privateConstructorUsedError;
  Async<Reply>? get submittingReply => throw _privateConstructorUsedError;
  Async<Question>? get votingQuestion => throw _privateConstructorUsedError;
  Async<Answer>? get votingAnswer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionDetailStateCopyWith<QuestionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailStateCopyWith<$Res> {
  factory $QuestionDetailStateCopyWith(
          QuestionDetailState value, $Res Function(QuestionDetailState) then) =
      _$QuestionDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Question question,
      Async<List<Answer>> answers,
      Async<Answer>? submittingAnswer,
      Async<Reply>? submittingReply,
      Async<Question>? votingQuestion,
      Async<Answer>? votingAnswer});

  $QuestionCopyWith<$Res> get question;
  $AsyncCopyWith<List<Answer>, $Res> get answers;
  $AsyncCopyWith<Answer, $Res>? get submittingAnswer;
  $AsyncCopyWith<Reply, $Res>? get submittingReply;
  $AsyncCopyWith<Question, $Res>? get votingQuestion;
  $AsyncCopyWith<Answer, $Res>? get votingAnswer;
}

/// @nodoc
class _$QuestionDetailStateCopyWithImpl<$Res>
    implements $QuestionDetailStateCopyWith<$Res> {
  _$QuestionDetailStateCopyWithImpl(this._value, this._then);

  final QuestionDetailState _value;
  // ignore: unused_field
  final $Res Function(QuestionDetailState) _then;

  @override
  $Res call({
    Object? question = freezed,
    Object? answers = freezed,
    Object? submittingAnswer = freezed,
    Object? submittingReply = freezed,
    Object? votingQuestion = freezed,
    Object? votingAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Async<List<Answer>>,
      submittingAnswer: submittingAnswer == freezed
          ? _value.submittingAnswer
          : submittingAnswer // ignore: cast_nullable_to_non_nullable
              as Async<Answer>?,
      submittingReply: submittingReply == freezed
          ? _value.submittingReply
          : submittingReply // ignore: cast_nullable_to_non_nullable
              as Async<Reply>?,
      votingQuestion: votingQuestion == freezed
          ? _value.votingQuestion
          : votingQuestion // ignore: cast_nullable_to_non_nullable
              as Async<Question>?,
      votingAnswer: votingAnswer == freezed
          ? _value.votingAnswer
          : votingAnswer // ignore: cast_nullable_to_non_nullable
              as Async<Answer>?,
    ));
  }

  @override
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }

  @override
  $AsyncCopyWith<List<Answer>, $Res> get answers {
    return $AsyncCopyWith<List<Answer>, $Res>(_value.answers, (value) {
      return _then(_value.copyWith(answers: value));
    });
  }

  @override
  $AsyncCopyWith<Answer, $Res>? get submittingAnswer {
    if (_value.submittingAnswer == null) {
      return null;
    }

    return $AsyncCopyWith<Answer, $Res>(_value.submittingAnswer!, (value) {
      return _then(_value.copyWith(submittingAnswer: value));
    });
  }

  @override
  $AsyncCopyWith<Reply, $Res>? get submittingReply {
    if (_value.submittingReply == null) {
      return null;
    }

    return $AsyncCopyWith<Reply, $Res>(_value.submittingReply!, (value) {
      return _then(_value.copyWith(submittingReply: value));
    });
  }

  @override
  $AsyncCopyWith<Question, $Res>? get votingQuestion {
    if (_value.votingQuestion == null) {
      return null;
    }

    return $AsyncCopyWith<Question, $Res>(_value.votingQuestion!, (value) {
      return _then(_value.copyWith(votingQuestion: value));
    });
  }

  @override
  $AsyncCopyWith<Answer, $Res>? get votingAnswer {
    if (_value.votingAnswer == null) {
      return null;
    }

    return $AsyncCopyWith<Answer, $Res>(_value.votingAnswer!, (value) {
      return _then(_value.copyWith(votingAnswer: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionDetailStateCopyWith<$Res>
    implements $QuestionDetailStateCopyWith<$Res> {
  factory _$QuestionDetailStateCopyWith(_QuestionDetailState value,
          $Res Function(_QuestionDetailState) then) =
      __$QuestionDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Question question,
      Async<List<Answer>> answers,
      Async<Answer>? submittingAnswer,
      Async<Reply>? submittingReply,
      Async<Question>? votingQuestion,
      Async<Answer>? votingAnswer});

  @override
  $QuestionCopyWith<$Res> get question;
  @override
  $AsyncCopyWith<List<Answer>, $Res> get answers;
  @override
  $AsyncCopyWith<Answer, $Res>? get submittingAnswer;
  @override
  $AsyncCopyWith<Reply, $Res>? get submittingReply;
  @override
  $AsyncCopyWith<Question, $Res>? get votingQuestion;
  @override
  $AsyncCopyWith<Answer, $Res>? get votingAnswer;
}

/// @nodoc
class __$QuestionDetailStateCopyWithImpl<$Res>
    extends _$QuestionDetailStateCopyWithImpl<$Res>
    implements _$QuestionDetailStateCopyWith<$Res> {
  __$QuestionDetailStateCopyWithImpl(
      _QuestionDetailState _value, $Res Function(_QuestionDetailState) _then)
      : super(_value, (v) => _then(v as _QuestionDetailState));

  @override
  _QuestionDetailState get _value => super._value as _QuestionDetailState;

  @override
  $Res call({
    Object? question = freezed,
    Object? answers = freezed,
    Object? submittingAnswer = freezed,
    Object? submittingReply = freezed,
    Object? votingQuestion = freezed,
    Object? votingAnswer = freezed,
  }) {
    return _then(_QuestionDetailState(
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as Async<List<Answer>>,
      submittingAnswer: submittingAnswer == freezed
          ? _value.submittingAnswer
          : submittingAnswer // ignore: cast_nullable_to_non_nullable
              as Async<Answer>?,
      submittingReply: submittingReply == freezed
          ? _value.submittingReply
          : submittingReply // ignore: cast_nullable_to_non_nullable
              as Async<Reply>?,
      votingQuestion: votingQuestion == freezed
          ? _value.votingQuestion
          : votingQuestion // ignore: cast_nullable_to_non_nullable
              as Async<Question>?,
      votingAnswer: votingAnswer == freezed
          ? _value.votingAnswer
          : votingAnswer // ignore: cast_nullable_to_non_nullable
              as Async<Answer>?,
    ));
  }
}

/// @nodoc

class _$_QuestionDetailState implements _QuestionDetailState {
  const _$_QuestionDetailState(
      {required this.question,
      this.answers = const Async.loading(),
      this.submittingAnswer,
      this.submittingReply,
      this.votingQuestion,
      this.votingAnswer});

  @override
  final Question question;
  @JsonKey(defaultValue: const Async.loading())
  @override
  final Async<List<Answer>> answers;
  @override
  final Async<Answer>? submittingAnswer;
  @override
  final Async<Reply>? submittingReply;
  @override
  final Async<Question>? votingQuestion;
  @override
  final Async<Answer>? votingAnswer;

  @override
  String toString() {
    return 'QuestionDetailState(question: $question, answers: $answers, submittingAnswer: $submittingAnswer, submittingReply: $submittingReply, votingQuestion: $votingQuestion, votingAnswer: $votingAnswer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionDetailState &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.submittingAnswer, submittingAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.submittingAnswer, submittingAnswer)) &&
            (identical(other.submittingReply, submittingReply) ||
                const DeepCollectionEquality()
                    .equals(other.submittingReply, submittingReply)) &&
            (identical(other.votingQuestion, votingQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.votingQuestion, votingQuestion)) &&
            (identical(other.votingAnswer, votingAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.votingAnswer, votingAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(submittingAnswer) ^
      const DeepCollectionEquality().hash(submittingReply) ^
      const DeepCollectionEquality().hash(votingQuestion) ^
      const DeepCollectionEquality().hash(votingAnswer);

  @JsonKey(ignore: true)
  @override
  _$QuestionDetailStateCopyWith<_QuestionDetailState> get copyWith =>
      __$QuestionDetailStateCopyWithImpl<_QuestionDetailState>(
          this, _$identity);
}

abstract class _QuestionDetailState implements QuestionDetailState {
  const factory _QuestionDetailState(
      {required Question question,
      Async<List<Answer>> answers,
      Async<Answer>? submittingAnswer,
      Async<Reply>? submittingReply,
      Async<Question>? votingQuestion,
      Async<Answer>? votingAnswer}) = _$_QuestionDetailState;

  @override
  Question get question => throw _privateConstructorUsedError;
  @override
  Async<List<Answer>> get answers => throw _privateConstructorUsedError;
  @override
  Async<Answer>? get submittingAnswer => throw _privateConstructorUsedError;
  @override
  Async<Reply>? get submittingReply => throw _privateConstructorUsedError;
  @override
  Async<Question>? get votingQuestion => throw _privateConstructorUsedError;
  @override
  Async<Answer>? get votingAnswer => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionDetailStateCopyWith<_QuestionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
