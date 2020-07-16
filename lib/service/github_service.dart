import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:github_issue_tracker/model/issue.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/repository/github_issue_repo.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';
import 'package:github_issue_tracker/screens/login_screen/issue_list_screen.dart';
import 'package:github_issue_tracker/screens/login_screen/repository_list_screen.dart';

class GitHubService extends ChangeNotifier {
  String _username;
  String _password;
  List<Repository> _repos = [];
  List<Issue> _issues = [];
  bool _loading = false;

  String get username => _username;

  String get password => _password;

  List<Repository> get repos => _repos;

  List<Issue> get issues => _issues;

  bool get loading => _loading;

  void setUsername(String username) {
    _username = username;
    notifyListeners();
  }

  void setPassword(String pass) {
    _password = pass;
    notifyListeners();
  }

  Future<void> getGitHubRepos(BuildContext context,
      {GlobalKey<FormState> formKey}) async {
    _loading = true;
    notifyListeners();
    if (formKey.currentState.validate()) {
      GitHubRepositoryRepo client = GitHubRepositoryRepo.create(_username);
      Response<Repository> repoFlutter = await client.getFlutterRepo();
      Response<Repository> repoWebsite = await client.getWebsiteRepo();
      Response<Repository> repoSamples = await client.getSamplesRepo();
      print(repoFlutter.body.issuesUrl);
      if (repoFlutter.statusCode == 200) {
        _repos = [repoFlutter.body, repoWebsite.body, repoSamples.body];
        _loading = false;
        notifyListeners();
      } else {
        _loading = false;
        notifyListeners();
        return;
      }

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RepositoryListScreen(),
        ),
      );
    }
  }

  Future<void> getGitHubIssues({BuildContext context, String issueUrl}) async {
    issueUrl = issueUrl.split('issue').first;
    GitHubIssueRepo client = GitHubIssueRepo.create(issueUrl);
    Response<List<Issue>> issue = await client.getIssues();
    if (issue.statusCode == 200) {
      _issues = issue.body;
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
