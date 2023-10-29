import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../shared/utils/value-manager.dart';
import '../../navbar/navbar_widget.dart';
import 'desktop/portfolio_desktop_widget.dart';
import 'mobile/portfolio_mobile_widget.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavBarWidget(),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppPaddingValue.p40),
                      child: ScreenTypeLayout.builder(
                        desktop: (context) {
                          return const PortfolioDesktopWidget();
                        },
                        mobile: (p0) {
                          return const PortfolioMobileWidget();
                        },
                      ))))
        ],
      ),
    );
  }
}
