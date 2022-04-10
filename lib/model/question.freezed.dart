// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
class _$QuestionTearOff {
  const _$QuestionTearOff();

  _Question call(
      {required String title,
      required String content,
      required int votes,
      required int answers,
      required int views,
      List<String>? tags,
      List<String>? images,
      required User user,
      required DateTime dateTime,
      List<String> voted = const [],
      List<String> devoted = const [],
      bool isAnonymous = false}) {
    return _Question(
      title: title,
      content: content,
      votes: votes,
      answers: answers,
      views: views,
      tags: tags,
      images: images,
      user: user,
      dateTime: dateTime,
      voted: voted,
      devoted: devoted,
      isAnonymous: isAnonymous,
    );
  }

  Question fromJson(Map<String, Object> json) {
    return Question.fromJson(json);
  }
}

/// @nodoc
const $Question = _$QuestionTearOff();

/// @nodoc
mixin _$Question {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get votes => throw _privateConstructorUsedError;
  int get answers => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;
  List<String> get voted => throw _privateConstructorUsedError;
  List<String> get devoted => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String content,
      int votes,
      int answers,
      int views,
      List<String>? tags,
      List<String>? images,
      User user,
      DateTime dateTime,
      List<String> voted,
      List<String> devoted,
      bool isAnonymous});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res> implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  final Question _value;
  // ignore: unused_field
  final $Res Function(Question) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? votes = freezed,
    Object? answers = freezed,
    Object? views = freezed,
    Object? tags = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
    Object? voted = freezed,
    Object? devoted = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devoted: devoted == freezed
          ? _value.devoted
          : devoted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$QuestionCopyWith<$Res> implements $QuestionCopyWith<$Res> {
  factory _$QuestionCopyWith(_Question value, $Res Function(_Question) then) =
      __$QuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String content,
      int votes,
      int answers,
      int views,
      List<String>? tags,
      List<String>? images,
      User user,
      DateTime dateTime,
      List<String> voted,
      List<String> devoted,
      bool isAnonymous});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$QuestionCopyWithImpl<$Res> extends _$QuestionCopyWithImpl<$Res>
    implements _$QuestionCopyWith<$Res> {
  __$QuestionCopyWithImpl(_Question _value, $Res Function(_Question) _then)
      : super(_value, (v) => _then(v as _Question));

  @override
  _Question get _value => super._value as _Question;

  @override
  $Res call({
    Object? title = freezed,
    Object? content = freezed,
    Object? votes = freezed,
    Object? answers = freezed,
    Object? views = freezed,
    Object? tags = freezed,
    Object? images = freezed,
    Object? user = freezed,
    Object? dateTime = freezed,
    Object? voted = freezed,
    Object? devoted = freezed,
    Object? isAnonymous = freezed,
  }) {
    return _then(_Question(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      votes: votes == freezed
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as int,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      voted: voted == freezed
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      devoted: devoted == freezed
          ? _value.devoted
          : devoted // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Question extends _Question {
  const _$_Question(
      {required this.title,
      required this.content,
      required this.votes,
      required this.answers,
      required this.views,
      this.tags,
      this.images,
      required this.user,
      required this.dateTime,
      this.voted = const [],
      this.devoted = const [],
      this.isAnonymous = false})
      : super._();

  factory _$_Question.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final int votes;
  @override
  final int answers;
  @override
  final int views;
  @override
  final List<String>? tags;
  @override
  final List<String>? images;
  @override
  final User user;
  @override
  final DateTime dateTime;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> voted;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> devoted;
  @JsonKey(defaultValue: false)
  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'Question(title: $title, content: $content, votes: $votes, answers: $answers, views: $views, tags: $tags, images: $images, user: $user, dateTime: $dateTime, voted: $voted, devoted: $devoted, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Question &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.votes, votes) ||
                const DeepCollectionEquality().equals(other.votes, votes)) &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality()
                    .equals(other.answers, answers)) &&
            (identical(other.views, views) ||
                const DeepCollectionEquality().equals(other.views, views)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)) &&
            (identical(other.voted, voted) ||
                const DeepCollectionEquality().equals(other.voted, voted)) &&
            (identical(other.devoted, devoted) ||
                const DeepCollectionEquality()
                    .equals(other.devoted, devoted)) &&
            (identical(other.isAnonymous, isAnonymous) ||
                const DeepCollectionEquality()
                    .equals(other.isAnonymous, isAnonymous)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(votes) ^
      const DeepCollectionEquality().hash(answers) ^
      const DeepCollectionEquality().hash(views) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(dateTime) ^
      const DeepCollectionEquality().hash(voted) ^
      const DeepCollectionEquality().hash(devoted) ^
      const DeepCollectionEquality().hash(isAnonymous);

  @JsonKey(ignore: true)
  @override
  _$QuestionCopyWith<_Question> get copyWith =>
      __$QuestionCopyWithImpl<_Question>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionToJson(this);
  }
}

abstract class _Question extends Question {
  const factory _Question(
      {required String title,
      required String content,
      required int votes,
      required int answers,
      required int views,
      List<String>? tags,
      List<String>? images,
      required User user,
      required DateTime dateTime,
      List<String> voted,
      List<String> devoted,
      bool isAnonymous}) = _$_Question;
  const _Question._() : super._();

  factory _Question.fromJson(Map<String, dynamic> json) = _$_Question.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get votes => throw _privateConstructorUsedError;
  @override
  int get answers => throw _privateConstructorUsedError;
  @override
  int get views => throw _privateConstructorUsedError;
  @override
  List<String>? get tags => throw _privateConstructorUsedError;
  @override
  List<String>? get images => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  List<String> get voted => throw _privateConstructorUsedError;
  @override
  List<String> get devoted => throw _privateConstructorUsedError;
  @override
  bool get isAnonymous => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionCopyWith<_Question> get copyWith =>
      throw _privateConstructorUsedError;
}
