import 'package:flutter/material.dart';
import 'package:flutter_welcome_login_signup/pages/login.dart';
import 'package:flutter_welcome_login_signup/pages/signup.dart';
import 'package:flutter_welcome_login_signup/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const Welcome(),
        '/login': (context) => const Login(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}
