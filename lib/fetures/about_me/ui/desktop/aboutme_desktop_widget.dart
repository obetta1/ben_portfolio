// import 'dart:html' as html;

import 'package:benjamin_portfolio/shared/utils/app_font.dart';
import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

import '../../../../shared/design/constants/app_animations.dart';
import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';

class AboutMeDesktopWidget extends StatelessWidget {
  const AboutMeDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: w / 30),
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: RiveAnimation.asset(AppAnimations.introAnimation),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: AppPaddingValue.p100),
              Row(
                children: [
                  CircleAvatar(
                    radius: w / 14,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: w / 14 - 4,
                      backgroundImage: const AssetImage(AppImages.selfImage),
                    ),
                  ),
                  const SizedBox(width: AppPaddingValue.p100),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: AppFont.dmSansRegular,
                                fontSize: w / AppPaddingValue.p40),
                            children: [
                              const TextSpan(text: 'I am '),
                              TextSpan(
                                  text: 'Benjamin Obetta ',
                                  style: TextStyle(color: AppColors.purple))
                            ]),
                      ),
                      const SizedBox(height: AppPaddingValue.p20),
                      const Text(
                        'mission,',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.2,
                                fontFamily: 'Preah',
                                fontSize: w / AppPaddingValue.p20,
                                fontWeight: FontWeight.bold),
                            children: [
                              const TextSpan(
                                  text: 'Turning Ideas to innovative\n'),
                              const TextSpan(text: 'Solution. '),
                              TextSpan(
                                  text: 'light the Path',
                                  style: TextStyle(color: AppColors.purple)),
                              const TextSpan(text: '...')
                            ]),
                      ),
                      // const Text(
                      //     'Because if the cover does not impress you what else can?'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: AppSizeValue.s60),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "I'm a Software Engineer & ",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1.2,
                        fontFamily: AppFont.dmSansRegular,
                        fontSize: w / AppPaddingValue.p28),
                  ),
                  RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.white,
                            height: 1.2,
                            fontFamily: AppFont.dmSansRegular,
                            fontSize: w / AppSizeValue.s44,
                            fontWeight: FontWeight.bold),
                        children: const [
                          TextSpan(
                              text: 'a mobile Developer  ',
                              style: TextStyle(
                                  backgroundColor: Colors.yellowAccent,
                                  color: Colors.black)),
                          TextSpan(
                              text:
                                  ' who loves providing solutions and sharing my coding journey!')
                        ]),
                  ),
                  const SizedBox(height: AppPaddingValue.p20),
                  SizedBox(
                    child: Row(
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
                  )
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
      onTap: () => {}, // html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
