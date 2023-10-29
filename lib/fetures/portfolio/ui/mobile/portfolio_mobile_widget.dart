import 'package:flutter/material.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';
import '../../../../shared/widgets/app_outlined_button.dart';

class PortfolioMobileWidget extends StatelessWidget {
  const PortfolioMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Mobile App Development',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    highlightContainer(
                        context,
                        true,
                        'FieldMaxPro App',
                        AppImages.fielmax_app,
                        'This app facilitates fieldwork management and sales representative monitoring and providing field force automation solutions.\nStack: Flutter.',
                        'VISIT PlayStore'),
                    highlightContainer(
                        context,
                        true,
                        'Herconomy App',
                        AppImages.herconomy_app,
                        'This is a finance application that allows users to save easily and earn interest on their savings, with attractive features that suit users’ needs\nStack: Kotlin.',
                        'VISIT PlayStore'),
                    highlightContainer(
                        context,
                        true,
                        'Eveword App',
                        AppImages.evword_app,
                        'This is an e-commerce application that  I built for a hair vendor that allows users to order products and services online.\nStack: Futter.',
                        'VISIT PlayStore'),
                    highlightContainer(
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

  Widget highlightContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageWidth: 80,
            imageHeight: 80,
            path: imagePath,
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic,
                  style: const TextStyle(
                      height: 1.2, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                Text(
                  text,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12),
                ),
                if (showButton) const SizedBox(height: 10),
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
