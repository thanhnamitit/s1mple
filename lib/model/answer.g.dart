// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Specification _$$_SpecificationFromJson(Map<String, dynamic> json) =>
    _$_Specification(
      code: json['code'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SpecificationToJson(_$_Specification instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as String?,
      content: json['content'] as String,
      accepted: json['accepted'] as bool? ?? false,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      dateTime: DateTime.parse(json['dateTime'] as String),
      replies: (json['replies'] as List<dynamic>?)
          ?.map((e) => Reply.fromJson(e as Map<String, dynamic>))
          .toList(),
      voted:
          (json['voted'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      devoted: (json['devoted'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      type: _$enumDecodeNullable(_$AnswerTypeEnumMap, json['type']),
      specifications: (json['specifications'] as List<dynamic>?)
          ?.map((e) => Specification.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'accepted': instance.accepted,
      'user': instance.user.toJson(),
      'dateTime': instance.dateTime.toIso8601String(),
      'replies': instance.replies?.map((e) => e.toJson()).toList(),
      'voted': instance.voted,
      'devoted': instance.devoted,
      'type': _$AnswerTypeEnumMap[instance.type],
      'specifications':
          instance.specifications?.map((e) => e.toJson()).toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$AnswerTypeEnumMap = {
  AnswerType.none: 'none',
  AnswerType.loading: 'loading',
  AnswerType.aiPredict: 'aiPredict',
};
