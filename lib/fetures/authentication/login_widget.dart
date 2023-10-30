import 'package:benjamin_portfolio/fetures/authentication/screens/desktop/login_page.dart';
import 'package:benjamin_portfolio/fetures/authentication/screens/mobile/login_page_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return LoginPage();
      },
      mobile: (p0) {
        return LoginPageMobile();
      },
    );
  }
}
