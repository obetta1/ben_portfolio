import 'package:flutter/material.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';

class ResumeMobileWidget extends StatefulWidget {
  const ResumeMobileWidget({super.key});

  @override
  State<ResumeMobileWidget> createState() => _ResumeMobileWidgetState();
}

class _ResumeMobileWidgetState extends State<ResumeMobileWidget> {
  @override
  Widget build(BuildContext context) {
    var pages;
    bool isReady = false;

    return Container(
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
                  'Certificates',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  direction: Axis.horizontal,
                  children: [
                    CertificateContainer(
                        context, AppImages.hotel_voyage, 'degree Certificate'),
                    CertificateContainer(
                        context, AppImages.hotel_voyage, 'degree Certificate'),
                    CertificateContainer(
                        context, AppImages.hotel_voyage, 'degree Certificate'),
                    CertificateContainer(
                        context, AppImages.hotel_voyage, 'degree Certificate')
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
    return Container(
      width: w,
      height: 369,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          AppImageWidget(
            path: imagePath,
          ),
          const SizedBox(width: 5),
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
