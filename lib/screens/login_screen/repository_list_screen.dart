import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/constants.dart';
import 'package:github_issue_tracker/model/repository_model.dart';
import 'package:github_issue_tracker/screens/login_screen/issue_list_screen.dart';

class RepositoryListScreen extends StatelessWidget {
  final List<RepositoryModel> repos = [
    RepositoryModel(
        repoName: 'Flutter',
        description: 'This is repo flutter',
        license: 'BSD-3-Clause License',
        stars: 95.5),
    RepositoryModel(
        repoName: 'website', description: 'This is flutter web', stars: 1.3),
    RepositoryModel(
        repoName: 'samples',
        description: 'A collection of Flutter examples and demos.',
        stars: 7.8)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repository List'),
      ),
      body: ListView.separated(
          padding: EdgeInsets.all(20),
          shrinkWrap: true,
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: repos.length,
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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber, borderRadius: waveBorderOdd),
                child: ListTile(
                  title: Text(repos[index].repoName),
                  subtitle: Text(
                    repos[index].description,
                  ),
                  trailing: Icon(Icons.stars),
                ),
              ),
            );
          }),
    );
  }
}
