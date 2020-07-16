import 'package:github_issue_tracker/model/issue.dart';
import 'package:test/test.dart';

Issue _issueModel;

void main() {
  test('[Model] check each value', () async {
    _issueModel = Issue(title: 'Error', state: 'open', createdAt: '10102020');
    expect(_issueModel.title.runtimeType, equals(String));
    expect(_issueModel.state, isNotNull);
    expect(_issueModel.createdAt, isNotEmpty);
  });
}
