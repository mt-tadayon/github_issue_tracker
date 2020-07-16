import 'package:github_issue_tracker/model/repository.dart';
import 'package:test/test.dart';

Repository _repoModel;

void main() {
  test('[Model] check each value', () async {
    _repoModel = Repository(
        name: 'repo',
        description: 'This is repo description',
        stargazersCount: 100,
        issuesUrl: 'www.github.com/flutter',
        openIssues: 10);
    expect(_repoModel.name.runtimeType, equals(String));
    expect(_repoModel.description, isNotEmpty);
    expect(_repoModel.stargazersCount, isNotNull);
    expect(_repoModel.issuesUrl.runtimeType, equals(String));
  });
}
