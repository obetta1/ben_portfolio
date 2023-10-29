import 'package:flutter/material.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';
import '../../../../shared/widgets/app_outlined_button.dart';

class PortfolioDesktopWidget extends StatelessWidget {
  const PortfolioDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      // height: MediaQuery.of(context).size.height - 100,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
                BoxShadow(
                  blurRadius: 200,
                  spreadRadius: 200,
                  color: AppColors.purple.withOpacity(0.4),
                )
              ]),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Mobile App Development Portfolio',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    portfolioContainer(
                        context,
                        true,
                        'FieldMaxPro App',
                        AppImages.fielmax_app,
                        'This app facilitates fieldwork management and sales representative monitoring and providing field force automation solutions.\nStack: Flutter.',
                        'VISIT PlayStore'),
                    portfolioContainer(
                        context,
                        true,
                        'Herconomy App',
                        AppImages.herconomy_app,
                        'This is a finance application that allows users to save easily and earn interest on their savings, with attractive features that suit users’ needs\nStack: Kotlin.',
                        'VISIT PlayStore'),
                    portfolioContainer(
                        context,
                        true,
                        'Eveword App',
                        AppImages.evword_app,
                        'This is an e-commerce application that  I built for a hair vendor that allows users to order products and services online.\nStack: Futter.',
                        'VISIT PlayStore'),
                    portfolioContainer(
                        context,
                        true,
                        'Hotel Voyage App',
                        AppImages.hotel_voyage,
                        "This is a mobile application that is used for booking hotel reservations and other amenities from the comfort of your home.\nStack: Kotlin.",
                        'VISIT PlayStore'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget portfolioContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w / 2.4,
      height: 500,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 20),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                AppImageWidget(
                  imageWidth: w / 2.4,
                  imageHeight: 250,
                  path: imagePath,
                ),
                Text(
                  text,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 10),
                if (showButton)
                  AppOutlinedButton(
                    title: buttonText,
                    textStyle: const TextStyle(fontSize: 12),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
