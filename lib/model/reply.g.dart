// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reply _$$_ReplyFromJson(Map<String, dynamic> json) => _$_Reply(
      content: json['content'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_ReplyToJson(_$_Reply instance) => <String, dynamic>{
      'content': instance.content,
      'user': instance.user.toJson(),
      'dateTime': instance.dateTime.toIso8601String(),
    };
