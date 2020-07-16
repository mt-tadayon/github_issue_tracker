import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:github_issue_tracker/model/issue.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/repository/github_issue_repo.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';
import 'package:github_issue_tracker/screens/login_screen/issue_list_screen.dart';
import 'package:github_issue_tracker/screens/login_screen/repository_list_screen.dart';

class GitHubService extends ChangeNotifier {
  String username;
  String password;
  List<Repository> repos = [];
  List<Issue> issues = [];
  bool loading = false;

  Future<void> getGitHubRepos(BuildContext context,
      {GlobalKey<FormState> formKey}) async {
    loading = true;
    notifyListeners();
    if (formKey.currentState.validate()) {
      GitHubRepositoryRepo client = GitHubRepositoryRepo.create(username);
      Response<Repository> repoFlutter = await client.getFlutterRepo();
      Response<Repository> repoWebsite = await client.getWebsiteRepo();
      Response<Repository> repoSamples = await client.getSamplesRepo();
      print(repoFlutter.body.issuesUrl);
      if (repoFlutter.statusCode == 200) {
        repos = [repoFlutter.body, repoWebsite.body, repoSamples.body];
        loading = false;
        notifyListeners();
      } else {
        loading = false;
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
      issues = issue.body;
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
