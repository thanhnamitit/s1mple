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

Specification _$SpecificationFromJson(Map<String, dynamic> json) {
  return _Specification.fromJson(json);
}

/// @nodoc
class _$SpecificationTearOff {
  const _$SpecificationTearOff();

  _Specification call({required String code, required String name}) {
    return _Specification(
      code: code,
      name: name,
    );
  }

  Specification fromJson(Map<String, Object> json) {
    return Specification.fromJson(json);
  }
}

/// @nodoc
const $Specification = _$SpecificationTearOff();

/// @nodoc
mixin _$Specification {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecificationCopyWith<Specification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecificationCopyWith<$Res> {
  factory $SpecificationCopyWith(
          Specification value, $Res Function(Specification) then) =
      _$SpecificationCopyWithImpl<$Res>;
  $Res call({String code, String name});
}

/// @nodoc
class _$SpecificationCopyWithImpl<$Res>
    implements $SpecificationCopyWith<$Res> {
  _$SpecificationCopyWithImpl(this._value, this._then);

  final Specification _value;
  // ignore: unused_field
  final $Res Function(Specification) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SpecificationCopyWith<$Res>
    implements $SpecificationCopyWith<$Res> {
  factory _$SpecificationCopyWith(
          _Specification value, $Res Function(_Specification) then) =
      __$SpecificationCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name});
}

/// @nodoc
class __$SpecificationCopyWithImpl<$Res>
    extends _$SpecificationCopyWithImpl<$Res>
    implements _$SpecificationCopyWith<$Res> {
  __$SpecificationCopyWithImpl(
      _Specification _value, $Res Function(_Specification) _then)
      : super(_value, (v) => _then(v as _Specification));

  @override
  _Specification get _value => super._value as _Specification;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(_Specification(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Specification extends _Specification {
  const _$_Specification({required this.code, required this.name}) : super._();

  factory _$_Specification.fromJson(Map<String, dynamic> json) =>
      _$$_SpecificationFromJson(json);

  @override
  final String code;
  @override
  final String name;

  @override
  String toString() {
    return 'Specification(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Specification &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$SpecificationCopyWith<_Specification> get copyWith =>
      __$SpecificationCopyWithImpl<_Specification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpecificationToJson(this);
  }
}

abstract class _Specification extends Specification {
  const factory _Specification({required String code, required String name}) =
      _$_Specification;
  const _Specification._() : super._();

  factory _Specification.fromJson(Map<String, dynamic> json) =
      _$_Specification.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpecificationCopyWith<_Specification> get copyWith =>
      throw _privateConstructorUsedError;
}

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
      List<String> devoted = const [],
      AnswerType? type,
      List<Specification>? specifications}) {
    return _Answer(
      id: id,
      content: content,
      accepted: accepted,
      user: user,
      dateTime: dateTime,
      replies: replies,
      voted: voted,
      devoted: devoted,
      type: type,
      specifications: specifications,
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
  AnswerType? get type => throw _privateConstructorUsedError;
  List<Specification>? get specifications => throw _privateConstructorUsedError;

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
      List<String> devoted,
      AnswerType? type,
      List<Specification>? specifications});

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
    Object? type = freezed,
    Object? specifications = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnswerType?,
      specifications: specifications == freezed
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as List<Specification>?,
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
      List<String> devoted,
      AnswerType? type,
      List<Specification>? specifications});

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
    Object? type = freezed,
    Object? specifications = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AnswerType?,
      specifications: specifications == freezed
          ? _value.specifications
          : specifications // ignore: cast_nullable_to_non_nullable
              as List<Specification>?,
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
      this.devoted = const [],
      this.type,
      this.specifications})
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
  final AnswerType? type;
  @override
  final List<Specification>? specifications;

  @override
  String toString() {
    return 'Answer(id: $id, content: $content, accepted: $accepted, user: $user, dateTime: $dateTime, replies: $replies, voted: $voted, devoted: $devoted, type: $type, specifications: $specifications)';
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
                const DeepCollectionEquality()
                    .equals(other.devoted, devoted)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.specifications, specifications) ||
                const DeepCollectionEquality()
                    .equals(other.specifications, specifications)));
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
      const DeepCollectionEquality().hash(devoted) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(specifications);

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
      List<String> devoted,
      AnswerType? type,
      List<Specification>? specifications}) = _$_Answer;
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
  AnswerType? get type => throw _privateConstructorUsedError;
  @override
  List<Specification>? get specifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnswerCopyWith<_Answer> get copyWith => throw _privateConstructorUsedError;
}
