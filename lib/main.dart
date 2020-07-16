import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen/login_screen.dart';
import 'service/github_service.dart';
import 'package:logging/logging.dart';


void main() {
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
    return ChangeNotifierProvider<GitHubService>(
      create: (context) => GitHubService(),
      child: MaterialApp(
        title: 'GitHub Issue Tracker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          appBarTheme: AppBarTheme(
            color: const Color(0xff2d788e),
          ),
        ),
        home: LoginScreen(),
      ),
    );
  }
}
