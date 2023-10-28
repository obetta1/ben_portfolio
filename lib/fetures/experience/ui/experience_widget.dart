import 'package:benjamin_portfolio/fetures/experience/ui/desktop/experience_desktop_widget.dart';
import 'package:benjamin_portfolio/fetures/experience/ui/mobile/experience_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ExperienceDesktopWidget(),
      mobile: (p0) => const ExperienceMobileWidget(),
    );
  }
}
