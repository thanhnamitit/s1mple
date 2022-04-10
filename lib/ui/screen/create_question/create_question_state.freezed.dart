// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateQuestionStateTearOff {
  const _$CreateQuestionStateTearOff();

  _CreateQuestionState call(
      {List<String> images = const [],
      bool anonymous = false,
      Question? submitting}) {
    return _CreateQuestionState(
      images: images,
      anonymous: anonymous,
      submitting: submitting,
    );
  }
}

/// @nodoc
const $CreateQuestionState = _$CreateQuestionStateTearOff();

/// @nodoc
mixin _$CreateQuestionState {
  List<String> get images => throw _privateConstructorUsedError;
  bool get anonymous => throw _privateConstructorUsedError;
  Question? get submitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateQuestionStateCopyWith<CreateQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionStateCopyWith<$Res> {
  factory $CreateQuestionStateCopyWith(
          CreateQuestionState value, $Res Function(CreateQuestionState) then) =
      _$CreateQuestionStateCopyWithImpl<$Res>;
  $Res call({List<String> images, bool anonymous, Question? submitting});

  $QuestionCopyWith<$Res>? get submitting;
}

/// @nodoc
class _$CreateQuestionStateCopyWithImpl<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  _$CreateQuestionStateCopyWithImpl(this._value, this._then);

  final CreateQuestionState _value;
  // ignore: unused_field
  final $Res Function(CreateQuestionState) _then;

  @override
  $Res call({
    Object? images = freezed,
    Object? anonymous = freezed,
    Object? submitting = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      anonymous: anonymous == freezed
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as Question?,
    ));
  }

  @override
  $QuestionCopyWith<$Res>? get submitting {
    if (_value.submitting == null) {
      return null;
    }

    return $QuestionCopyWith<$Res>(_value.submitting!, (value) {
      return _then(_value.copyWith(submitting: value));
    });
  }
}

/// @nodoc
abstract class _$CreateQuestionStateCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$CreateQuestionStateCopyWith(_CreateQuestionState value,
          $Res Function(_CreateQuestionState) then) =
      __$CreateQuestionStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> images, bool anonymous, Question? submitting});

  @override
  $QuestionCopyWith<$Res>? get submitting;
}

/// @nodoc
class __$CreateQuestionStateCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res>
    implements _$CreateQuestionStateCopyWith<$Res> {
  __$CreateQuestionStateCopyWithImpl(
      _CreateQuestionState _value, $Res Function(_CreateQuestionState) _then)
      : super(_value, (v) => _then(v as _CreateQuestionState));

  @override
  _CreateQuestionState get _value => super._value as _CreateQuestionState;

  @override
  $Res call({
    Object? images = freezed,
    Object? anonymous = freezed,
    Object? submitting = freezed,
  }) {
    return _then(_CreateQuestionState(
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      anonymous: anonymous == freezed
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as Question?,
    ));
  }
}

/// @nodoc

class _$_CreateQuestionState implements _CreateQuestionState {
  const _$_CreateQuestionState(
      {this.images = const [], this.anonymous = false, this.submitting});

  @JsonKey(defaultValue: const [])
  @override
  final List<String> images;
  @JsonKey(defaultValue: false)
  @override
  final bool anonymous;
  @override
  final Question? submitting;

  @override
  String toString() {
    return 'CreateQuestionState(images: $images, anonymous: $anonymous, submitting: $submitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateQuestionState &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.anonymous, anonymous) ||
                const DeepCollectionEquality()
                    .equals(other.anonymous, anonymous)) &&
            (identical(other.submitting, submitting) ||
                const DeepCollectionEquality()
                    .equals(other.submitting, submitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(anonymous) ^
      const DeepCollectionEquality().hash(submitting);

  @JsonKey(ignore: true)
  @override
  _$CreateQuestionStateCopyWith<_CreateQuestionState> get copyWith =>
      __$CreateQuestionStateCopyWithImpl<_CreateQuestionState>(
          this, _$identity);
}

abstract class _CreateQuestionState implements CreateQuestionState {
  const factory _CreateQuestionState(
      {List<String> images,
      bool anonymous,
      Question? submitting}) = _$_CreateQuestionState;

  @override
  List<String> get images => throw _privateConstructorUsedError;
  @override
  bool get anonymous => throw _privateConstructorUsedError;
  @override
  Question? get submitting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CreateQuestionStateCopyWith<_CreateQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}
