import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'issue.g.dart';
part 'issue.freezed.dart';

@freezed
abstract class Issue with _$Issue {
  const factory Issue({
    @required @JsonKey(name: 'title') String title,
    @required @JsonKey(name: 'state') String state,
    @required @JsonKey(name: 'created_at') String createdAt,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
