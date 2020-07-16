import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/service/github_service.dart';
import 'package:provider/provider.dart';

class IssueListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Issues'),
      ),
      body: Consumer<GitHubService>(
        builder: (context, issueService, child) =>
        ListView.builder(
          itemCount: issueService.issues.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Title: ${issueService.issues[index].title}'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Status: ${issueService.issues[index].state}'),
                            Text('Created at: ${issueService.issues[index].createdAt}'),
                          ],
                        )
                      ],
                    ),
                  ),
                  elevation: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
