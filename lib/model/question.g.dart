// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      title: json['title'] as String,
      content: json['content'] as String,
      votes: json['votes'] as int,
      answers: json['answers'] as int,
      views: json['views'] as int,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      dateTime: DateTime.parse(json['dateTime'] as String),
      voted:
          (json['voted'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      devoted: (json['devoted'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      isAnonymous: json['isAnonymous'] as bool? ?? false,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'votes': instance.votes,
      'answers': instance.answers,
      'views': instance.views,
      'tags': instance.tags,
      'images': instance.images,
      'user': instance.user,
      'dateTime': instance.dateTime.toIso8601String(),
      'voted': instance.voted,
      'devoted': instance.devoted,
      'isAnonymous': instance.isAnonymous,
    };
