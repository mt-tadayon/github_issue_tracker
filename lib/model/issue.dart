import 'package:json_annotation/json_annotation.dart';

part 'issue.g.dart';

@JsonSerializable()
class Issue {
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'state')
  String state;
  @JsonKey(name: 'created_at')
  String createdAt;

  Issue({this.title, this.state, this.createdAt});

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);

  Map<String, dynamic> toJson() => _$IssueToJson(this);
}