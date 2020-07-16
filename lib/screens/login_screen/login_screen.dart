import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/constants.dart';
import 'package:github_issue_tracker/provider/github_provider.dart';
import 'package:github_issue_tracker/screens/login_screen/repository_list_screen.dart';
import 'package:github_issue_tracker/widgets/login_form_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Issue Tracker'),
      ),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        decoration: loginBackgroundImage,
        child: Consumer<GitHubProvider>(
          builder: (_, GitHubProvider value, __) => value.loading
              ? Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xddffffff),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(),
                  ),
                )
              : Form(
                  key: formKey,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          LoginFormWidget(),
                          SizedBox(height: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () async {
                                  if (formKey.currentState.validate()) {
                                    bool status =
                                        await Provider.of<GitHubProvider>(
                                      context,
                                      listen: false,
                                    ).getGitHubRepos();
                                    if (status)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RepositoryListScreen(),
                                        ),
                                      );
                                  }
                                },
                                child: Text('Login'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
