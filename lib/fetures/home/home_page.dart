import 'package:benjamin_portfolio/fetures/Resume/ui/resume_widget.dart';
import 'package:benjamin_portfolio/fetures/about_me/ui/about_me_widget.dart';
import 'package:benjamin_portfolio/fetures/contact_me/ui/contact_me_widget.dart';
import 'package:benjamin_portfolio/fetures/experience/ui/experience_widget.dart';
import 'package:benjamin_portfolio/fetures/navbar/navbar_widget.dart';
import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';

import '../projects/ui/project_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          NavBarWidget(),
          Expanded(
              child: SingleChildScrollView(
                  child: Padding(
            padding: EdgeInsets.symmetric(horizontal: AppPaddingValue.p40),
            child: Column(
              children: [
                IntroWidget(),
                ProductWidget(),
                ExperienceWidget(),
                ResumeWidget(),
                ContactUsWidget()
              ],
            ),
          )))
        ],
      ),
    );
  }
}
