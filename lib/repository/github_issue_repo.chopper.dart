// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_issue_repo.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$GitHubIssueRepo extends GitHubIssueRepo {
  _$GitHubIssueRepo([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GitHubIssueRepo;

  @override
  Future<Response<List<Issue>>> getIssues() {
    final $url = 'issues';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<List<Issue>, Issue>($request);
  }
}
