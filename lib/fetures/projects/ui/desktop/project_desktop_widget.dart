import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/models/project_model.dart';
import '../../../../shared/design/constants/app_images.dart';
import '../../../../shared/utils/app_colors.dart';
import '../../../../shared/widgets/app_image_widget.dart';
import '../../../../shared/widgets/app_outlined_button.dart';
import '../../project_provider.dart';

class ProjectsDesktopWidget extends ConsumerStatefulWidget {
  const ProjectsDesktopWidget({super.key});

  @override
  ConsumerState<ProjectsDesktopWidget> createState() =>
      _ProjectsDesktopWidgetState();
}

class _ProjectsDesktopWidgetState extends ConsumerState<ProjectsDesktopWidget> {
  @override
  Widget build(BuildContext context) {
    Future<List<Project>?> projects =
        ref.watch(projectProvider.notifier).fetch();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Highlights',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 40),
                Wrap(
                  runSpacing: 20,
                  spacing: 20,
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
                                        const SizedBox(
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
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w / 2.4,
      height: 260,
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppImageWidget(
            imageWidth: 100,
            imageHeight: 100,
            path: imagePath,
          ),
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
                Text(
                  text,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  // style: TextStyle(fontSize: w / 80),
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
