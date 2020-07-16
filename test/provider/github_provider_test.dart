import 'package:chopper/chopper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/provider/github_provider.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

class MockResponse extends Mock implements http.BaseResponse {
  int _statusCode;

  MockResponse(this._statusCode);

  @override
  int get statusCode => _statusCode;
}

class MockGitHubRepositoryRepo extends Mock implements GitHubRepositoryRepo {
  MockResponse response;

  MockGitHubRepositoryRepo(this.response);

  Future<Response<Repository>> getFlutterRepo() async {
    return Response(
      response,
      Repository(
          name: "FlutterTestRepo",
          openIssues: "55",
          issuesUrl: "url_to_issues",
          stargazersCount: "1",
          description: "TestDescription"),
    );
  }

  Future<Response<Repository>> getWebsiteRepo() async {
    return Response(
      response,
      Repository(
          name: "WebsiteTestRepo",
          openIssues: "15",
          issuesUrl: "url_to_issues",
          stargazersCount: "201",
          description: "TestDescription"),
    );
  }

  Future<Response<Repository>> getSamplesRepo() async {
    return Response(
      response,
      Repository(
          name: "SamplesTestRepo",
          openIssues: "5",
          issuesUrl: "http://samples/test/",
          stargazersCount: "201",
          description: "TestDescription"),
    );
  }
}

main() {
  GetIt sl = GetIt.instance;

  group("GitHubProvider: ", () {
    GitHubProvider subject = GitHubProvider();

    setUp(() {
      subject = GitHubProvider();
      sl.allowReassignment = true;
    });

    test("should contain three elements in repo list", () async {
      sl.registerSingleton<GitHubRepositoryRepo>(
        MockGitHubRepositoryRepo(MockResponse(200)),
      );
      await subject.getGitHubRepos();
      expect(subject.repos.length, 3);
    });

    test("should contain zero elements in repo list", () async {
      sl.registerSingleton<GitHubRepositoryRepo>(
        MockGitHubRepositoryRepo(MockResponse(404)),
      );
      await subject.getGitHubRepos();
      expect(subject.repos.length, 0);
    });
  });
}
