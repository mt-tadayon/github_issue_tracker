import 'package:get_it/get_it.dart';
import 'package:github_issue_tracker/repository/github_repository_repo.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<GitHubRepositoryRepo>(
    GitHubRepositoryRepo.create(),
  );
}
