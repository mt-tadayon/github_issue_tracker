import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/model/issue.dart';

class IssueListScreen extends StatelessWidget {
  final List<Issue> issues = [
    Issue(title: 'First issue', state: 'open'),
    Issue(title: 'Second issue', state: 'close')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Issues'),
      ),
      body: ListView.builder(
        itemCount: issues.length,
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
                      Text(issues[index].title),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Status: ${issues[index].state}')
                    ],
                  ),
                ),
                elevation: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
