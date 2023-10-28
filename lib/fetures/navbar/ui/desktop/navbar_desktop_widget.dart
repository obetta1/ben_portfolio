// import 'dart:html' as html;

import 'package:benjamin_portfolio/fetures/Resume/ui/resume_widget.dart';
import 'package:benjamin_portfolio/shared/utils/app_font.dart';
import 'package:flutter/material.dart';

import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_outlined_button.dart';

class NavBarDesktopWidget extends StatelessWidget {
  const NavBarDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: double.maxFinite,
        color: AppColors.navBarColor,
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style: const TextStyle(
                      fontFamily: AppFont.dmSansBold, color: Colors.white),
                  children: [
                    const TextSpan(
                        text:
                            ' Need Digital Solution that will scale your business?'),
                    TextSpan(
                      text:
                          'I am readily available to provide an innovation Solution ',
                      style: TextStyle(
                          fontFamily: AppFont.dmSansBold,
                          color: AppColors.purple),
                    ),
                    const TextSpan(text: '! '),
                  ]),
            ),
            const SizedBox(width: 6),
            AppOutlinedButton(
              textStyle: const TextStyle(
                  fontFamily: AppFont.dmSansBold, color: Colors.white),
              title: 'Follow me on github',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResumeWidget()));
                // try {
                //   html.window.open('https://github.com/obetta1', '_blank');
                // } catch (e) {
                //   print(e.toString());
                // }
              },
            )
          ],
        )
            // RichText(

            ));
  }
}
