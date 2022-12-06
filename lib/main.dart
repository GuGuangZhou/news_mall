import 'package:flutter/material.dart';
import 'package:news_mall/pages/welcome/welcome.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home: WelcomePage(),
    );
  }
}

