import 'package:flutter/material.dart';
import 'package:saksham_portfolio/features/home/home_page.dart';
import 'package:saksham_portfolio/design/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      title: 'Saksham Gupta👋 | Flutter Developer',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
