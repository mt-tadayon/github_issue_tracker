import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/provider/github_provider.dart';
import 'package:provider/provider.dart';

class RepositoryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository List'),
      ),
      body: Consumer<GitHubProvider>(
        builder: (context, loginService, child) => ListView.separated(
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: loginService.repos.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Provider.of<GitHubProvider>(context, listen: false)
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
                      title: Text(
                        loginService.repos[index].name,
                        style: TextStyle(fontSize: 22),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            loginService.repos[index].description,
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.open_in_browser),
                                    Text(loginService.repos[index].openIssues
                                        .toString())
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                )
                              ),
                              Spacer(flex: 1,),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.stars),
                                    Text(loginService.repos[index].stargazersCount
                                        .toString())
                                  ],
                                ),
                              ),
                            ],
                          ),
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
