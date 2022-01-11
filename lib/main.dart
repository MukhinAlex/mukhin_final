import 'package:flutter/material.dart';
import 'package:mukhin_final/sreens/about_screen.dart';
import 'package:mukhin_final/sreens/auth.dart';
import 'package:mukhin_final/sreens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Мухин А.В итог',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor:  Colors.indigo,
         ),
        ),
      routes: {
        '/auth': (context) => const Auth(),
        '/main_screen': (context) => const MainScreen(),
        '/about_screen': (context) => const AboutScreen(),
      },
      initialRoute: '/auth',
      );
  }
}
