import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:saksham_portfolio/design/constants/app_images.dart';
import 'package:saksham_portfolio/design/utils/app_colors.dart';
import 'package:saksham_portfolio/design/widgets/buttons/app_outlined_button.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class ProjectMobileWidget extends StatefulWidget {
  const ProjectMobileWidget({super.key});

  @override
  State<ProjectMobileWidget> createState() => _ProjectMobileWidgetState();
}

class _ProjectMobileWidgetState extends State<ProjectMobileWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
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
                'Projects',
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
                      'Weather App',
                      AppLottie.weather,
                      'A Weather forcasting app which shows temperature,humdity and other stuff with the appropriate city using Dart, Flutter & Rest api',
                      'Code',
                      'https://github.com/sakshamgupta930/Mausam-App'),
                  highlightContainer(
                      context,
                      true,
                      'Instagram Clone',
                      AppLottie.instagram,
                      "A Full stack Instagram Clone in which user can post and like and comment with the full authentication Using Flutter and Firebase",
                      'Code',
                      'https://github.com/sakshamgupta930/Instagram-Clone'),
                  highlightContainer(
                      context,
                      true,
                      'Food Recipe App',
                      AppLottie.foodrecipe,
                      'A Food Recipe App which shows recipes of food which you want using Dart, Flutter & Rest api',
                      'Code',
                      'https://github.com/sakshamgupta930/Food-Recipe-App'),
                  highlightContainer(
                      context,
                      true,
                      'Amazon Lite App',
                      AppLottie.amazon,
                      "A Full stack Amazon Clone is an eCommerce which the user can sell and buy the product using flutter, dart, firebase, cloud firestore",
                      'Code',
                      'https://github.com/sakshamgupta930/Amazon-Clone'),
                  highlightContainer(
                      context,
                      true,
                      'Wallpaper App',
                      AppLottie.wallpaper,
                      'A Wallpaper app which shows wallpapers fetching through pexels API want using Dart, Flutter & Rest api',
                      'Code',
                      'https://github.com/sakshamgupta930/Wallpaper-App'),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget highlightContainer(BuildContext context, bool showButton, String topic,
      imagePath, text, buttonText, link) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      decoration: BoxDecoration(
          color: AppColors.purpleDark.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            height: 100,
            child: Lottie.asset(imagePath, frameRate: FrameRate.max),
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
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 10),
                ),
                if (showButton) const SizedBox(height: 10),
                if (showButton)
                  Center(
                    child: AppOutlinedButton(
                      onTap: () => html.window.open(link, '_blank'),
                      title: buttonText,
                      textStyle: const TextStyle(fontSize: 12),
                      height: 25,
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
