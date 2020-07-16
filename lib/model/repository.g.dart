// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository(
    name: json['name'] as String,
    description: json['description'] as String,
    stargazersCount: (json['stargazers_count'] as num)?.toDouble(),
    openIssues: (json['open_issues'] as num)?.toDouble(),
    issuesUrl: json['issues_url'] as String,
  );
}

Map<String, dynamic> _$RepositoryToJson(Repository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'open_issues': instance.openIssues,
      'issues_url': instance.issuesUrl,
    };
