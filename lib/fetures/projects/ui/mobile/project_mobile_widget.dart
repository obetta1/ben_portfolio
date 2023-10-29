import 'package:benjamin_portfolio/core/models/project_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';
import '../../../../shared/widgets/app_outlined_button.dart';
import '../../project_provider.dart';

class ProjectsMobileWidget extends ConsumerStatefulWidget {
  const ProjectsMobileWidget({super.key});

  @override
  ConsumerState<ProjectsMobileWidget> createState() =>
      _ProjectsMobileWidgetState();
}

class _ProjectsMobileWidgetState extends ConsumerState<ProjectsMobileWidget> {
  @override
  Widget build(BuildContext context) {
    Future<List<Project>?> projects =
        ref.watch(projectProvider.notifier).fetch();

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      // height: MediaQuery.of(context).size.height,
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
                const Text(
                  'Past Projects',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    FutureBuilder<List<Project>?>(
                        future: projects,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            final len = snapshot.data!.length;
                            debugPrint("lent =====${len}");
                            return Container(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                  itemCount: len,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        highlightContainer(
                                            context,
                                            false,
                                            '${snapshot.data?[index].name}',
                                            AppImages.bookmarkImage,
                                            '${snapshot.data?[index].htmlUrl} ',
                                            'VISIT CHANNEL'),
                                        SizedBox(
                                          height: 20,
                                        )
                                      ],
                                    );
                                  }),
                            );
                          }
                          return Text("empty");
                        }),
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
