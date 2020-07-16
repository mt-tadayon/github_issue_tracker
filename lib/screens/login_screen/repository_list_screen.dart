import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/service/github_service.dart';
import 'package:provider/provider.dart';

class RepositoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository List'),
      ),
      body: Consumer<GitHubService>(
        builder: (context, loginService, child) => ListView.separated(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: loginService.repos.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Provider.of<GitHubService>(context, listen: false)
                      .getGitHubIssues(
                    context: context,
                    issueUrl: loginService.repos[index].issuesUrl,
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      title: Text(loginService.repos[index].name),
                      subtitle: Text(
                        loginService.repos[index].description,
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.stars),
                          Text(loginService.repos[index].stargazersCount
                              .toString())
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
