// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Answer _$AnswerFromJson(Map<String, dynamic> json) {
  return _Answer.fromJson(json);
}

/// @nodoc
class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {String? id,
      required String content,
      bool accepted = false,
      required User user,
      required DateTime dateTime,
      List<Reply>? replies,
      List<String> voted = const [],
      List<String> devoted = const []}) {
    return _Answer(
      id: id,
      content: content,
      accepted: accepted,
      user: user,
      dateTime: dateTime,
      replies: replies,
      voted: voted,
      devoted: devoted,
    );
  }

  Answer fromJson(Map<String, Object> json) {
    return Answer.fromJson(json);
  }
}

/// @nodoc
const $Answer = _$AnswerTearOff();

/// @nodoc
mixin _$Answer {
  String? get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get accepted => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<Reply>? get replies => throw _privateConstructorUsedError;
  List<String> get voted => throw _privateConstructorUsedError;
  List<String> get devoted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerCopyWith<Answer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String content,
      bool accepted,
      User user,
      DateTime dateTime,
      List<Reply>? replies,
      List<String> voted,
      List<String> devoted});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? accepted = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
    Object? replies = freezed,
    Object? voted = freezed,
    Object? devoted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Reply>?,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devoted: devoted == freezed
          ? _value.devoted
          : devoted // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String content,
      bool accepted,
      User user,
      DateTime dateTime,
      List<Reply>? replies,
      List<String> voted,
      List<String> devoted});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? accepted = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
    Object? replies = freezed,
    Object? voted = freezed,
    Object? devoted = freezed,
  }) {
    return _then(_Answer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      accepted: accepted == freezed
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replies: replies == freezed
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<Reply>?,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devoted: devoted == freezed
          ? _value.devoted
          : devoted // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Answer extends _Answer {
  const _$_Answer(
      {this.id,
      required this.content,
      this.accepted = false,
      required this.user,
      required this.dateTime,
      this.replies,
      this.voted = const [],
      this.devoted = const []})
      : super._();

  factory _$_Answer.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFromJson(json);

  @override
  final String? id;
  @override
  final String content;
  @JsonKey(defaultValue: false)
  @override
  final bool accepted;
  @override
  final User user;
  @override
  final DateTime dateTime;
  @override
  final List<Reply>? replies;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> voted;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> devoted;

  @override
  String toString() {
    return 'Answer(id: $id, content: $content, accepted: $accepted, user: $user, dateTime: $dateTime, replies: $replies, voted: $voted, devoted: $devoted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Answer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.accepted, accepted) ||
                const DeepCollectionEquality()
                    .equals(other.accepted, accepted)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.replies, replies) ||
                const DeepCollectionEquality()
                    .equals(other.replies, replies)) &&
            (identical(other.voted, voted) ||
                const DeepCollectionEquality().equals(other.voted, voted)) &&
            (identical(other.devoted, devoted) ||
                const DeepCollectionEquality().equals(other.devoted, devoted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(accepted) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(replies) ^
      const DeepCollectionEquality().hash(voted) ^
      const DeepCollectionEquality().hash(devoted);

  @JsonKey(ignore: true)
  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerToJson(this);
  }
}

abstract class _Answer extends Answer {
  const factory _Answer(
      {String? id,
      required String content,
      bool accepted,
      required User user,
      required DateTime dateTime,
      List<Reply>? replies,
      List<String> voted,
      List<String> devoted}) = _$_Answer;
  const _Answer._() : super._();

  factory _Answer.fromJson(Map<String, dynamic> json) = _$_Answer.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  bool get accepted => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  List<Reply>? get replies => throw _privateConstructorUsedError;
  @override
  List<String> get voted => throw _privateConstructorUsedError;
  @override
  List<String> get devoted => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}
