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
        builder: (context, GitHubProvider value, child) => ListView.separated(
            padding: EdgeInsets.all(20),
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemCount: value.repos.length,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: () {
                  Provider.of<GitHubProvider>(context, listen: false)
                      .getGitHubIssues(
                    context: context,
                    issueUrl: value.repos[index].issuesUrl,
                  );
                },
                child: Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      title: Text(
                        value.repos[index].name,
                        style: TextStyle(fontSize: 22),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            value.repos[index].description,
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
                                    Text(value.repos[index].openIssues
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
                                    Text(value.repos[index].stargazersCount
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
