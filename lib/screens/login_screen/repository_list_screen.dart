import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/screens/login_screen/issue_list_screen.dart';
import 'package:github_issue_tracker/service/github_repository_service.dart';
import 'package:provider/provider.dart';

class RepositoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository List'),
      ),
      body: Consumer<GitHubRepositoryService>(
        builder: (context, loginService, child) =>
        ListView.separated(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: loginService.repos.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => IssueListScreen(),
                    ),
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
                          Text(loginService.repos[index].stargazersCount.toString())
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
