import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/login_screen/login_screen.dart';
import 'service/login_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginService>(
      create: (context) => LoginService(),
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
