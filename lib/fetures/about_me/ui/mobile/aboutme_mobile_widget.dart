import 'package:benjamin_portfolio/shared/utils/app_font.dart';
import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';

class AboutMeMobileWidget extends StatelessWidget {
  const AboutMeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: AppSizeValue.s64,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: AppSizeValue.s60,
                  backgroundImage: AssetImage(AppImages.selfImage),
                ),
              ),
              const SizedBox(height: AppPaddingValue.p20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: AppFont.dmSansRegular,
                        fontSize: 24,
                        height: 1),
                    children: [
                      TextSpan(
                          text: 'Benjamin Obetta ',
                          style: TextStyle(color: AppColors.purple))
                    ]),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon('https://github.com/obetta1',
                        SocialIconsFlutter.instagram),
                    socialIcon('https://github.com/obetta1',
                        SocialIconsFlutter.github),
                    socialIcon('https://github.com/obetta1',
                        SocialIconsFlutter.linkedin_box),
                    socialIcon('https://github.com/obetta1',
                        SocialIconsFlutter.youtube)
                  ],
                ),
              ),
              const SizedBox(height: AppPaddingValue.p40),
              const Text(
                'Mission,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: AppSizeValue.s14),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        height: 1.4,
                        fontFamily: AppFont.dmSansRegular,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    children: [
                      const TextSpan(
                          text: 'Turning Ideas to innovative Digital '),
                      const TextSpan(text: 'Solution.'),
                      TextSpan(
                          text: 'light the Path',
                          style: TextStyle(color: AppColors.purple)),
                      const TextSpan(text: '...')
                    ]),
              ),
              const SizedBox(height: AppPaddingValue.p40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "I'm a Software Engineer & ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: AppFont.dmSansRegular,
                        fontSize: AppSizeValue.s16),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: AppFont.dmSansRegular,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' a mobile Developer ',
                              style: TextStyle(
                                  backgroundColor: Colors.yellowAccent,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  ' who loves providing solutions and sharing his coding journey!')
                        ]),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => {}, //html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconSize: AppSizeValue.s20,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
