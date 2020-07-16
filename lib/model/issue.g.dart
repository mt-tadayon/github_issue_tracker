// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Issue _$_$_IssueFromJson(Map<String, dynamic> json) {
  return _$_Issue(
    title: json['title'] as String,
    state: json['state'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_IssueToJson(_$_Issue instance) => <String, dynamic>{
      'title': instance.title,
      'state': instance.state,
      'created_at': instance.createdAt,
    };
