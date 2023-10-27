import 'package:benjamin_portfolio/fetures/navbar/ui/mobile/navbar_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'ui/desktop/navbar_desktop_widget.dart';

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
