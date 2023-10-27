import 'package:benjamin_portfolio/shared/utils/app_colors.dart';
import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final String title;
  final TextStyle? textStyle;
  final Color? borderColor;
  final bool? enabled;
  const AppOutlinedButton(
      {Key? key,
      this.onTap,
      this.height,
      this.width,
      required this.title,
      this.enabled = true,
      this.textStyle,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (enabled ?? true) ? onTap : () {},
      child: Container(
        height: height ?? AppSizeValue.s33,
        width: width ?? AppSizeValue.s177,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? AppColors.purple),
          borderRadius: BorderRadius.circular(8),
          color:
              ((enabled ?? true) ? AppColors.purpleDark : Colors.grey.shade500),
        ),
        child:
            Center(child: Text(title, style: textStyle ?? const TextStyle())),
      ),
    );
  }
}
