import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:github_issue_tracker/model/repository.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';
import 'package:github_issue_tracker/screens/login_screen/repository_list_screen.dart';

class GitHubRepositoryService extends ChangeNotifier {
  String username;
  String password;
  List<Repository> repos = [];

  Future<void> userLogin(BuildContext context,
      {GlobalKey<FormState> formKey}) async {
    if (formKey.currentState.validate()) {
      GitHubRepositoryRepo client = GitHubRepositoryRepo.create(username);
      Response<Repository> repoFlutter = await client.getFlutterRepo();
      Response<Repository> repoWebsite = await client.getWebsiteRepo();
      Response<Repository> repoSamples = await client.getSamplesRepo();
      print(repoFlutter.body.stargazersCount);
      if(repoFlutter.statusCode == 200 ) {
        repos = [repoFlutter.body, repoWebsite.body, repoSamples.body];
        notifyListeners();
      } else {
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
}
