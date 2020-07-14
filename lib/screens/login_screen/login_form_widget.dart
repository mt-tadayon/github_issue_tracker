import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:github_issue_tracker/widgets/text_form_widget.dart';
import '../../constants.dart';

class LoginFormWidget extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
            keyboardType: TextInputType.emailAddress,
            hintText: 'Username',
            iconData: Icons.account_circle,
            controller: usernameController,
            validator: (value) {
              return value;
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
              return value;
            },
          ),
        ],
      ),
    );
  }
}
