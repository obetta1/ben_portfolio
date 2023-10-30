import 'package:benjamin_portfolio/fetures/authentication/login_widget.dart';
import 'package:benjamin_portfolio/shared/design/constants/app_string.dart';
import 'package:benjamin_portfolio/shared/utils/app_font.dart';
import 'package:benjamin_portfolio/shared/utils/value-manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_outlined_button.dart';

class AboutMeMobileWidget extends StatelessWidget {
  const AboutMeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizeValue.s70,
              ),
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
              const SizedBox(height: AppPaddingValue.p20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    AppString.self_description,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.fade,
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: AppFont.dmSansRegular,
                        fontSize: AppSizeValue.s16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  AppOutlinedButton(
                    textStyle: const TextStyle(
                        fontFamily: AppFont.dmSansBold, color: Colors.white),
                    title: 'click  to View Portfolio',
                    onTap: () {
                      Get.to(() => LoginWidget());
                    },
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
