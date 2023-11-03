import 'package:benjamin_portfolio/fetures/Resume/ui/resume_widget.dart';
import 'package:benjamin_portfolio/fetures/about_me/ui/about_me_widget.dart';
import 'package:benjamin_portfolio/fetures/contact_me/ui/contact_me_widget.dart';
import 'package:benjamin_portfolio/fetures/experience/ui/experience_widget.dart';
import 'package:benjamin_portfolio/fetures/home/home_page.dart';
import 'package:benjamin_portfolio/fetures/navbar/navbar_widget.dart';
import 'package:benjamin_portfolio/fetures/projects/ui/project_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('home page ...', (tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: HomePage(title: 'My Portfolio'),
    ));

    // Verify if the NavBarWidget is displayed
    expect(find.byType(NavBarWidget), findsOneWidget);

    // Verify if all the main content widgets are displayed in order
    expect(find.byType(IntroWidget), findsOneWidget);
    expect(find.byType(ProductWidget), findsOneWidget);
    expect(find.byType(ExperienceWidget), findsOneWidget);
    expect(find.byType(ResumeWidget), findsOneWidget);
    expect(find.byType(ContactUsWidget), findsOneWidget);

    // Scroll down the page (assuming a ListView or SingleChildScrollView)
    await tester.drag(
        find.byType(SingleChildScrollView), const Offset(0.0, -400.0));
    await tester.pump();

    // Interact with widgets or test specific behaviors as needed

    await tester.tap(
        find.byType(IntroWidget).last); // Adjust as per your widget structure
    await tester.pumpAndSettle();

    // Verify navigation to the AboutMeWidget
    expect(find.byType(IntroWidget), findsOneWidget);
  });
}
