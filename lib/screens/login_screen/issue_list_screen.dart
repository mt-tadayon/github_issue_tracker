import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/provider/github_provider.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class IssueListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Issues'),
      ),
      body: Consumer<GitHubProvider>(
        builder: (context, issueService, child) =>
        ListView.builder(
          itemCount: issueService.issues.length,
          itemBuilder: (context, index) {
            var createdDate = DateFormat.yMd().format(DateTime.parse(issueService.issues[index].createdAt));
            return Container(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Status: ${issueService.issues[index].state}'),
                            Text('Created at: $createdDate'),
                          ],
                        )
                      ],
                    ),
                  ),
                  elevation: 5,
                ),
              ],
            ),
          );
          },
        ),
      ),
    );
  }
}
