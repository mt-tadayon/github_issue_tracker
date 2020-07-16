// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Respotitory _$_$_RespotitoryFromJson(Map<String, dynamic> json) {
  return _$_Respotitory(
    name: json['name'] as String,
    description: json['description'] as String,
    stargazersCount: json['stargazers_count'] as int,
    openIssues: json['open_issues'] as int,
    issuesUrl: json['issues_url'] as String,
  );
}

Map<String, dynamic> _$_$_RespotitoryToJson(_$_Respotitory instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'open_issues': instance.openIssues,
      'issues_url': instance.issuesUrl,
    };
