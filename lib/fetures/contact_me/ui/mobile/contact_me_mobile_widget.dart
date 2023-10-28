// import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';

import '../../../../shared/utils/app_colors.dart';

class ContactMeMobileWidget extends StatelessWidget {
  const ContactMeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text(
          'Contact Me',
          style: TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 8),
        const Text(
            "Students, entrepreneurs, or anyone seeking engaging conversations, feel free to reach out with an intriguing email. I look forward to connecting with you! 👇"),
        const SizedBox(height: 8),
        Text(
          'obettabenjamin44@gmail.com',
          style: TextStyle(color: AppColors.purple),
        ),
        const SizedBox(height: 20),
        SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              socialIcon(
                  'https://github.com/obetta1', SocialIconsFlutter.instagram),
              socialIcon(
                  'https://github.com/obetta1n', SocialIconsFlutter.github),
              socialIcon('https://github.com/obetta1',
                  SocialIconsFlutter.linkedin_box),
              socialIcon(
                  'https://github.com/obetta1', SocialIconsFlutter.youtube)
            ],
          ),
        ),
        const Divider(),
        const SizedBox(height: 20),
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
        iconSize: 20,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
