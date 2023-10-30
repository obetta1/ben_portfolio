import 'package:benjamin_portfolio/shared/utils/validators.dart';
import 'package:flutter/material.dart';

import '../../../../shared/utils/value-manager.dart';
import '../../../../shared/widgets/app_elevated_button.dart';
import '../../../portfolio/ui/portfolio_widget.dart';

class LoginPageMobile extends StatefulWidget {
  @override
  _LoginPageMobile createState() => _LoginPageMobile();
}

class _LoginPageMobile extends State<LoginPageMobile> {
  final loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: loginKey,
            child: Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 1.6,
              padding: const EdgeInsets.all(32),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    ' Login To View Portfolio',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: AppSizeValue.s25),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      label: Text("Username"),
                      fillColor: Colors.black26,
                    ),
                    validator: Validators.validateName,
                  ),
                  const SizedBox(height: 34),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      label: Text("password"),
                      fillColor: Colors.black26,
                    ),
                    validator: Validators.validatePassword,
                  ),
                  const SizedBox(height: 48),
                  SizedBox(
                    width: double.infinity,
                    child: AppElevatedButton(
                      onPressed: () => authenticate(context),
                      text: "LOGIN",
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  authenticate(BuildContext context) {
    if (!(loginKey.currentState?.validate() ?? false)) return;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const PortfolioWidget()));
  }
}
