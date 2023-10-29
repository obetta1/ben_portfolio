import 'package:benjamin_portfolio/shared/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  final ValueNotifier<bool>? loadingNotifier;
  final String text;
  final VoidCallback? onPressed;
  const AppElevatedButton({
    Key? key,
    this.loadingNotifier,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: loadingNotifier ?? ValueNotifier(false),
      builder: (_, value, __) => ElevatedButton(
        onPressed: value ? () {} : onPressed,
        child: value
            ? CupertinoActivityIndicator(color: AppColors.bgColor)
            : Text(text),
      ),
    );
  }
}
