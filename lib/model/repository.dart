import 'package:json_annotation/json_annotation.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'stargazers_count')
  double stargazersCount;
  @JsonKey(name: 'open_issues')
  double openIssues;
  @JsonKey(name: 'issues_url')
  String issuesUrl;

  Repository({this.name, this.description, this.stargazersCount, this.openIssues, this.issuesUrl});

  factory Repository.fromJson(Map<String, dynamic> json) => _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);
}