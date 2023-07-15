import 'package:flutter/material.dart';
import 'package:saksham_portfolio/navbar/ui/desktop/navbar_desktop_widget.dart';
import 'package:saksham_portfolio/navbar/ui/mobile/navbar_mobile_widget.dart';
// ignore: depend_on_referenced_packages
import 'package:responsive_builder/responsive_builder.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const NavBarDesktopWidget(),
      tablet: (p0) => const NavBarMobileWidget(),
      mobile: (p0) => const NavBarMobileWidget(),
    );
  }
}
