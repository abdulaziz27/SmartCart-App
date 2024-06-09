import 'package:flutter/material.dart';
import 'package:smartcart_app/pages/new_list_page.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'package:smartcart_app/pages/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/new_list': (context) => NewListPage(),
      },
    );
  }
}