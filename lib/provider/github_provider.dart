import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:github_issue_tracker/locator.dart';
import 'package:github_issue_tracker/model/issue.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/repository/github_issue_repo.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';
import 'package:github_issue_tracker/screens/login_screen/issue_list_screen.dart';

class GitHubProvider extends ChangeNotifier {
  String username;
  String password;
  List<Repository> _repos = [];
  List<Issue> _issues = [];
  bool _loading = false;

  List<Repository> get repos => _repos;

  List<Issue> get issues => _issues;

  bool get loading => _loading;

  Future<bool> getGitHubRepos() async {
    _loading = true;
    notifyListeners();
    GitHubRepositoryRepo client = locator.get<GitHubRepositoryRepo>();
    Response<Repository> repoFlutter = await client.getFlutterRepo();
    Response<Repository> repoWebsite = await client.getWebsiteRepo();
    Response<Repository> repoSamples = await client.getSamplesRepo();

    if (repoFlutter.statusCode == 200 &&
        repoWebsite.statusCode == 200 &&
        repoSamples.statusCode == 200) {
      _repos = [repoFlutter.body, repoWebsite.body, repoSamples.body];
      _loading = false;
      notifyListeners();
      return true;
    } else {
      _loading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> getGitHubIssues({
    BuildContext context,
    String issueUrl,
  }) async {
    issueUrl = issueUrl.split('issue').first;
    GitHubIssueRepo client = GitHubIssueRepo.create(issueUrl);
    Response<List<Issue>> response = await client.getIssues();
    if (response.statusCode == 200) {
      _issues = response.body;
    } else {
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => IssueListScreen(),
      ),
    );
  }
}
