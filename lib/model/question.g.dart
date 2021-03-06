// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String?,
      title: json['title'] as String,
      content: json['content'] as String,
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
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'answers': instance.answers,
      'views': instance.views,
      'tags': instance.tags,
      'images': instance.images,
      'user': instance.user.toJson(),
      'dateTime': instance.dateTime.toIso8601String(),
      'voted': instance.voted,
      'devoted': instance.devoted,
      'isAnonymous': instance.isAnonymous,
    };
