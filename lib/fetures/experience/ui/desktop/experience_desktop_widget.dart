import 'package:flutter/material.dart';

import '../../../../shared/design/constants/app_constants.dart';
import '../../../../shared/design/constants/app_string.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';

class ExperienceDesktopWidget extends StatelessWidget {
  const ExperienceDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Preah', fontSize: 24),
                  children: [
                    const TextSpan(
                        text:
                            'I have attained expertise in an array of cutting-edge '),
                    TextSpan(
                        text: 'tech stacks \n',
                        style: TextStyle(color: AppColors.purple)),
                    const TextSpan(
                        text:
                            'empowering me to craft seamless and innovative solutions.'),
                  ]),
            ),
            const SizedBox(height: 20),
            Container(
              // width: ,
              child: const Text(
                AppString.experience,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        7,
                        (index) => techStackCircle(
                            techStackImages.values.toList()[index]))),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        6,
                        (index) => techStackCircle(techStackImages.values
                            .toList()
                            .reversed
                            .toList()[index])))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget techStackCircle(String imagePath) {
    return Container(
      margin: const EdgeInsets.all(6),
      height: 54,
      width: 54,
      padding: const EdgeInsets.all(8),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: AppColors.violet),
      child: AppImageWidget(
        path: imagePath,
      ),
    );
  }
}
