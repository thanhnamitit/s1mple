// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reply _$ReplyFromJson(Map<String, dynamic> json) {
  return _Reply.fromJson(json);
}

/// @nodoc
class _$ReplyTearOff {
  const _$ReplyTearOff();

  _Reply call(
      {required String content,
      required User user,
      required DateTime dateTime}) {
    return _Reply(
      content: content,
      user: user,
      dateTime: dateTime,
    );
  }

  Reply fromJson(Map<String, Object> json) {
    return Reply.fromJson(json);
  }
}

/// @nodoc
const $Reply = _$ReplyTearOff();

/// @nodoc
mixin _$Reply {
  String get content => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReplyCopyWith<Reply> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyCopyWith<$Res> {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) then) =
      _$ReplyCopyWithImpl<$Res>;
  $Res call({String content, User user, DateTime dateTime});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ReplyCopyWithImpl<$Res> implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._value, this._then);

  final Reply _value;
  // ignore: unused_field
  final $Res Function(Reply) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$ReplyCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$ReplyCopyWith(_Reply value, $Res Function(_Reply) then) =
      __$ReplyCopyWithImpl<$Res>;
  @override
  $Res call({String content, User user, DateTime dateTime});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$ReplyCopyWithImpl<$Res> extends _$ReplyCopyWithImpl<$Res>
    implements _$ReplyCopyWith<$Res> {
  __$ReplyCopyWithImpl(_Reply _value, $Res Function(_Reply) _then)
      : super(_value, (v) => _then(v as _Reply));

  @override
  _Reply get _value => super._value as _Reply;

  @override
  $Res call({
    Object? content = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_Reply(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Reply extends _Reply {
  const _$_Reply(
      {required this.content, required this.user, required this.dateTime})
      : super._();

  factory _$_Reply.fromJson(Map<String, dynamic> json) =>
      _$$_ReplyFromJson(json);

  @override
  final String content;
  @override
  final User user;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'Reply(content: $content, user: $user, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reply &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$ReplyCopyWith<_Reply> get copyWith =>
      __$ReplyCopyWithImpl<_Reply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReplyToJson(this);
  }
}

abstract class _Reply extends Reply {
  const factory _Reply(
      {required String content,
      required User user,
      required DateTime dateTime}) = _$_Reply;
  const _Reply._() : super._();

  factory _Reply.fromJson(Map<String, dynamic> json) = _$_Reply.fromJson;

  @override
  String get content => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReplyCopyWith<_Reply> get copyWith => throw _privateConstructorUsedError;
}
