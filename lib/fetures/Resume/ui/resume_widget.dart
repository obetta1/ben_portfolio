import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop/resume_desktop_widget.dart';
import 'mobile/resume_mobile_widget.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) {
        return const ResumeDesktopWidget();
      },
      mobile: (p0) {
        return const ResumeMobileWidget();
      },
    );
  }
}
