import 'package:chopper/chopper.dart';
import 'package:github_issue_tracker/model/issue.dart';
import 'package:github_issue_tracker/repository/issue_converter.dart';

part 'github_issue_repo.chopper.dart';

@ChopperApi()
abstract class GitHubIssueRepo extends ChopperService {

  @Get(path: 'issues')
  Future<Response<List<Issue>>> getIssues();

  static GitHubIssueRepo create(String issueUrl) {
    print(issueUrl);
    final client = ChopperClient(
      baseUrl: issueUrl,
      interceptors: [HttpLoggingInterceptor()],
      converter: IssueConverter(),
      errorConverter: JsonConverter(),
      services: [_$GitHubIssueRepo(),],
    );
    return _$GitHubIssueRepo(client);
  }
}