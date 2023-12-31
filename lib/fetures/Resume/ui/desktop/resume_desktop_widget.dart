import 'package:benjamin_portfolio/shared/design/constants/app_images.dart';
import 'package:flutter/material.dart';

import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';

class ResumeDesktopWidget extends StatelessWidget {
  const ResumeDesktopWidget({super.key});

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
                  'Certifications',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    CertificateContainer(
                        context, AppImages.scrum_cert, 'Scrum Certificate'),
                    CertificateContainer(
                        context, AppImages.nysce_cert, 'NYSC Certificate'),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget CertificateContainer(
    BuildContext context,
    imagePath,
    imageTile,
  ) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: w / 2.4,
      height: h,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageHeight: h - 150,
            imageWidth: w / 2.4,
            imageFit: BoxFit.fill,
            path: imagePath,
          ),
          const SizedBox(width: 20),
          Text(
            imageTile,
            style: const TextStyle(
                fontSize: 26, height: 1.4, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
