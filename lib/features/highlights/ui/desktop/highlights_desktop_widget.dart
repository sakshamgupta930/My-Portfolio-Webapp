import 'package:flutter/material.dart';
import 'package:saksham_portfolio/design/constants/app_images.dart';
import 'package:saksham_portfolio/design/utils/app_colors.dart';
import 'package:saksham_portfolio/design/widgets/app_image_widget.dart';
import 'package:saksham_portfolio/design/widgets/buttons/app_outlined_button.dart';

class HighlightsDesktopWidget extends StatelessWidget {
  const HighlightsDesktopWidget({super.key});

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
          Column(
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
                  highlightContainer(
                      context,
                      false,
                      'Front-End',
                      AppImages.bookmarkImage,
                      'Experience in building user - friendly mobile and web apps using Dart & Flutter framework',
                      'VISIT CHANNEL'),
                  highlightContainer(
                      context,
                      false,
                      'Back-End',
                      AppImages.bulbImage,
                      'Experience in building backend of apps with Firebase, Cloud firestore & Rest API',
                      'VISIT CHANNEL'),
                  highlightContainer(
                      context,
                      false,
                      'UI/UX',
                      AppImages.cupImage,
                      'Experience in building user interface / design with Figma & Canva',
                      'VISIT CHANNEL'),
                  highlightContainer(
                      context,
                      false,
                      'Ex-Intern at Tripbuilder',
                      AppImages.pickerImage,
                      "A Trip Planner Startup company worked as a Flutter Developer ",
                      'VISIT CHANNEL'),
                ],
              )
            ],
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
                  style: const TextStyle(fontSize: 15),
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
