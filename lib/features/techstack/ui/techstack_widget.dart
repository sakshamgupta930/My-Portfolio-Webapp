import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:saksham_portfolio/features/techstack/ui/desktop/techstack_desktop_widget.dart';
import 'package:saksham_portfolio/features/techstack/ui/mobile/techstack_mobile_widget.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const TechstackDesktopWidget(),
      mobile: (p0) => const TechstackMobileWidget(),
    );
  }
}
