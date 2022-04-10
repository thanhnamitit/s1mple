// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forum_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForumHomeStateTearOff {
  const _$ForumHomeStateTearOff();

  _ForumHomeState call(
      {Async<List<Question>> questions = const Async.loading()}) {
    return _ForumHomeState(
      questions: questions,
    );
  }
}

/// @nodoc
const $ForumHomeState = _$ForumHomeStateTearOff();

/// @nodoc
mixin _$ForumHomeState {
  Async<List<Question>> get questions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForumHomeStateCopyWith<ForumHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForumHomeStateCopyWith<$Res> {
  factory $ForumHomeStateCopyWith(
          ForumHomeState value, $Res Function(ForumHomeState) then) =
      _$ForumHomeStateCopyWithImpl<$Res>;
  $Res call({Async<List<Question>> questions});

  $AsyncCopyWith<List<Question>, $Res> get questions;
}

/// @nodoc
class _$ForumHomeStateCopyWithImpl<$Res>
    implements $ForumHomeStateCopyWith<$Res> {
  _$ForumHomeStateCopyWithImpl(this._value, this._then);

  final ForumHomeState _value;
  // ignore: unused_field
  final $Res Function(ForumHomeState) _then;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Async<List<Question>>,
    ));
  }

  @override
  $AsyncCopyWith<List<Question>, $Res> get questions {
    return $AsyncCopyWith<List<Question>, $Res>(_value.questions, (value) {
      return _then(_value.copyWith(questions: value));
    });
  }
}

/// @nodoc
abstract class _$ForumHomeStateCopyWith<$Res>
    implements $ForumHomeStateCopyWith<$Res> {
  factory _$ForumHomeStateCopyWith(
          _ForumHomeState value, $Res Function(_ForumHomeState) then) =
      __$ForumHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({Async<List<Question>> questions});

  @override
  $AsyncCopyWith<List<Question>, $Res> get questions;
}

/// @nodoc
class __$ForumHomeStateCopyWithImpl<$Res>
    extends _$ForumHomeStateCopyWithImpl<$Res>
    implements _$ForumHomeStateCopyWith<$Res> {
  __$ForumHomeStateCopyWithImpl(
      _ForumHomeState _value, $Res Function(_ForumHomeState) _then)
      : super(_value, (v) => _then(v as _ForumHomeState));

  @override
  _ForumHomeState get _value => super._value as _ForumHomeState;

  @override
  $Res call({
    Object? questions = freezed,
  }) {
    return _then(_ForumHomeState(
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as Async<List<Question>>,
    ));
  }
}

/// @nodoc

class _$_ForumHomeState implements _ForumHomeState {
  const _$_ForumHomeState({this.questions = const Async.loading()});

  @JsonKey(defaultValue: const Async.loading())
  @override
  final Async<List<Question>> questions;

  @override
  String toString() {
    return 'ForumHomeState(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForumHomeState &&
            (identical(other.questions, questions) ||
                const DeepCollectionEquality()
                    .equals(other.questions, questions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(questions);

  @JsonKey(ignore: true)
  @override
  _$ForumHomeStateCopyWith<_ForumHomeState> get copyWith =>
      __$ForumHomeStateCopyWithImpl<_ForumHomeState>(this, _$identity);
}

abstract class _ForumHomeState implements ForumHomeState {
  const factory _ForumHomeState({Async<List<Question>> questions}) =
      _$_ForumHomeState;

  @override
  Async<List<Question>> get questions => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForumHomeStateCopyWith<_ForumHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
