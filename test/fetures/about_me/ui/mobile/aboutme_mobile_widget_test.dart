import 'package:benjamin_portfolio/fetures/about_me/ui/mobile/aboutme_mobile_widget.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  testWidgets('aboutme mobile widget ...', (tester) async {
    await tester.pumpWidget(GetMaterialApp(
      home: AboutMeMobileWidget(),
    ));
  });
}
