import 'package:flutter/material.dart';
import 'package:instagram_clone/app/home/presentation/pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 32),
      ),
      themeMode: ThemeMode.dark,
      home: const HomePage(),
    );
  }
}
