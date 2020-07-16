import 'package:flutter/material.dart';
import 'package:github_issue_tracker/locator.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'provider/github_provider.dart';
import 'screens/login_screen/login_screen.dart';

void main() {
  setupLocator();
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    print('${event.level.name}: ${event.time}: ${event.message}');
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GitHubProvider>(
      create: (context) => GitHubProvider(),
      child: MaterialApp(
        title: 'GitHub Issue Tracker',
        theme: ThemeData.light().copyWith(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                color: const Color(0xff2d788e),
              ),
        ),
        home: LoginScreen(),
      ),
    );
  }
}
