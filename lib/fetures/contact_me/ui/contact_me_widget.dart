import 'package:benjamin_portfolio/fetures/contact_me/ui/desktop/contact_me_desktop_widget.dart';
import 'package:benjamin_portfolio/fetures/contact_me/ui/mobile/contact_me_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const ContactMeDesktopWidget(),
      mobile: (p0) => const ContactMeMobileWidget(),
    );
  }
}
