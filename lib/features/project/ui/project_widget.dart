import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:saksham_portfolio/features/project/ui/desktop/project_desktop_widget.dart';
import 'package:saksham_portfolio/features/project/ui/mobile/project_mobile_widget.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ProjectDesktopWidget(),
      mobile: (p0) => const ProjectMobileWidget(),
      tablet: (p0) => const ProjectMobileWidget(),
    );
  }
}
