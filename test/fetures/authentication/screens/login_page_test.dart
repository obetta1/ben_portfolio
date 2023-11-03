import 'package:benjamin_portfolio/fetures/authentication/screens/desktop/login_page.dart';
import 'package:benjamin_portfolio/shared/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  testWidgets('login page ...', (tester) async {
    final mockObserver = MockNavigatorObserver();

    await tester.pumpWidget(MaterialApp(
      home: LoginPage(),
      navigatorObservers: [mockObserver],
    ));

    // Verify if the AppBar title is displayed
    expect(find.text('Login Page'), findsOneWidget);

    // Verify if the TextFields for username and password are displayed
    expect(find.byType(TextFormField), findsNWidgets(2));

    // Simulate entering text in the username and password fields
    await tester.enterText(
        find.widgetWithText(TextFormField, 'Username'), 'testuser');
    await tester.enterText(
        find.widgetWithText(TextFormField, 'password'), 'password123');

    // Simulate tapping the login button
    await tester.tap(find.widgetWithText(AppElevatedButton, 'LOGIN'));
    await tester.pumpAndSettle();
  });
}
