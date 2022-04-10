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
      Async<List<Answer>> answers = const Async.loading()}) {
    return _QuestionDetailState(
      question: question,
      answers: answers,
    );
  }
}

/// @nodoc
const $QuestionDetailState = _$QuestionDetailStateTearOff();

/// @nodoc
mixin _$QuestionDetailState {
  Question get question => throw _privateConstructorUsedError;
  Async<List<Answer>> get answers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionDetailStateCopyWith<QuestionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailStateCopyWith<$Res> {
  factory $QuestionDetailStateCopyWith(
          QuestionDetailState value, $Res Function(QuestionDetailState) then) =
      _$QuestionDetailStateCopyWithImpl<$Res>;
  $Res call({Question question, Async<List<Answer>> answers});

  $QuestionCopyWith<$Res> get question;
  $AsyncCopyWith<List<Answer>, $Res> get answers;
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
}

/// @nodoc
abstract class _$QuestionDetailStateCopyWith<$Res>
    implements $QuestionDetailStateCopyWith<$Res> {
  factory _$QuestionDetailStateCopyWith(_QuestionDetailState value,
          $Res Function(_QuestionDetailState) then) =
      __$QuestionDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Question question, Async<List<Answer>> answers});

  @override
  $QuestionCopyWith<$Res> get question;
  @override
  $AsyncCopyWith<List<Answer>, $Res> get answers;
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
    ));
  }
}

/// @nodoc

class _$_QuestionDetailState implements _QuestionDetailState {
  const _$_QuestionDetailState(
      {required this.question, this.answers = const Async.loading()});

  @override
  final Question question;
  @JsonKey(defaultValue: const Async.loading())
  @override
  final Async<List<Answer>> answers;

  @override
  String toString() {
    return 'QuestionDetailState(question: $question, answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionDetailState &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality().equals(other.answers, answers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(answers);

  @JsonKey(ignore: true)
  @override
  _$QuestionDetailStateCopyWith<_QuestionDetailState> get copyWith =>
      __$QuestionDetailStateCopyWithImpl<_QuestionDetailState>(
          this, _$identity);
}

abstract class _QuestionDetailState implements QuestionDetailState {
  const factory _QuestionDetailState(
      {required Question question,
      Async<List<Answer>> answers}) = _$_QuestionDetailState;

  @override
  Question get question => throw _privateConstructorUsedError;
  @override
  Async<List<Answer>> get answers => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionDetailStateCopyWith<_QuestionDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
