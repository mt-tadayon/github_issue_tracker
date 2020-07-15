// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return Issue(
    title: json['title'] as String,
    state: json['state'] as String,
    createdAt: json['created_at'] as String,
  );
}

Map<String, dynamic> _$IssueToJson(Issue instance) => <String, dynamic>{
      'title': instance.title,
      'state': instance.state,
      'created_at': instance.createdAt,
    };
