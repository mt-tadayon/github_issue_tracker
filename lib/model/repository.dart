import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repository.g.dart';

part 'repository.freezed.dart';

@freezed
abstract class Repository with _$Repository {
  const factory Repository({
    @required @JsonKey(name: 'name') String name,
    @required @JsonKey(name: 'description') String description,
    @required @JsonKey(name: 'stargazers_count') int stargazersCount,
    @required @JsonKey(name: 'open_issues') int openIssues,
    @required @JsonKey(name: 'issues_url') String issuesUrl,
  }) = _Respotitory;

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);
}
