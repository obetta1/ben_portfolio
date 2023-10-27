import 'package:benjamin_portfolio/fetures/about_me/ui/mobile/aboutme_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/aboutme_desktop_widget.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (context) {
        return const AboutMeMobileWidget();
      },
      desktop: (context) {
        return const AboutMeDesktopWidget();
      },
      mobile: (context) {
        return const AboutMeMobileWidget();
      },
    );
  }
}
