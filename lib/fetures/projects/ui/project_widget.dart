import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/project_desktop_widget.dart';
import 'mobile/project_mobile_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const ProjectsDesktopWidget();
      },
      mobile: (p0) {
        return const ProjectsMobileWidget();
      },
    );
  }
}
