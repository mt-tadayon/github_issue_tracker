import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/constants.dart';
import 'package:github_issue_tracker/provider/github_provider.dart';
import 'package:github_issue_tracker/widgets/text_form_widget.dart';
import 'package:provider/provider.dart';

class LoginFormWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<GitHubProvider>(context);

    usernameController.addListener(() {
      loginProvider.username= usernameController.text;
    });

    passwordController.addListener(() {
      loginProvider.password = passwordController.text;
    });

    return Container(
      decoration: waveContainer,
      padding: const EdgeInsets.symmetric(
        vertical: 50.0,
        horizontal: 20.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          TextFormWidget(
            hintText: 'Username',
            iconData: Icons.account_circle,
            controller: usernameController,
            validator: (value) {
              return value == "" ? 'Please provide a valid username' : null;
            },
          ),
          SizedBox(height: 20.0),
          TextFormWidget(
            keyboardType: TextInputType.text,
            hintText: 'Password',
            iconData: Icons.lock,
            obscureText: true,
            controller: passwordController,
            validator: (value) {
              return value == "" ? 'Please provide a valid password' : null;
            },
          ),
        ],
      ),
    );
  }
}
