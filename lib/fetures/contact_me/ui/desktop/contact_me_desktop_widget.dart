import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

import '../../../../shared/utils/app_colors.dart';

class ContactMeDesktopWidget extends StatelessWidget {
  const ContactMeDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizeValue.s60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: AppPaddingValue.p40),
        ),
        const SizedBox(height: AppPaddingValue.p20),
        const Text(
            "Students, entrepreneurs, or anyone seeking engaging conversations, feel free to reach out with an intriguing email. I look forward to connecting with you! 👇"),
        const SizedBox(height: 8),
        Text(
          'obettabenjamin44@gmail.com',
          style: TextStyle(color: AppColors.purple),
        ),
        const SizedBox(height: AppPaddingValue.p20),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              socialIcon(
                  'https://www.linkedin.com/in/benjamin-obetta-118992210/',
                  SocialIconsFlutter.instagram),
              socialIcon(
                  'https://www.linkedin.com/in/benjamin-obetta-118992210/',
                  SocialIconsFlutter.github),
              socialIcon(
                  'https://www.linkedin.com/in/benjamin-obetta-118992210/',
                  SocialIconsFlutter.linkedin_box),
              socialIcon(
                  'https://www.linkedin.com/in/benjamin-obetta-118992210/',
                  SocialIconsFlutter.youtube)
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: AppPaddingValue.p20),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Developed by Engr. Benjamin obetta. '),
            ],
          ),
        )
      ]),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => {}, //html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
