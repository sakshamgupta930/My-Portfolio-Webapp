import 'package:flutter/material.dart';
import 'package:saksham_portfolio/features/contact_us/ui/contact_us_widget.dart';
import 'package:saksham_portfolio/features/highlights/ui/highlights_widget.dart';
import 'package:saksham_portfolio/features/intro/ui/intro_widget.dart';
import 'package:saksham_portfolio/features/techstack/ui/techstack_widget.dart';
import 'package:saksham_portfolio/features/project/ui/project_widget.dart';
import 'package:saksham_portfolio/navbar/navbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBarWidget(),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    IntroWidget(),
                    HighlightsWidget(),
                    TechStackWidget(),
                    ProjectWidget(),
                    ContactUsWidget()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
