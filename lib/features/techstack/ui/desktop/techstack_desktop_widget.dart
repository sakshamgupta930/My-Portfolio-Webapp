import 'package:flutter/material.dart';
import 'package:saksham_portfolio/design/constants/app_constants.dart';
import 'package:saksham_portfolio/design/utils/app_colors.dart';
import 'package:saksham_portfolio/design/widgets/app_image_widget.dart';

class TechstackDesktopWidget extends StatelessWidget {
  const TechstackDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "About Me",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 40),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  style: const TextStyle(
                      color: Colors.white, fontFamily: 'Preah', fontSize: 24),
                  children: [
                    const TextSpan(
                        text:
                            "I'm  Saksham Gupta , A Mobile App Developer who specialized in Flutter framework I have attained expertise in an array of cutting-edge "),
                    TextSpan(
                        text: 'tech stacks ',
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
                "I am dedicated and passionate with a strong background in software development and focus on a mobile application development. I have done Internships to uplift my skills & A Flutter Facilitator in GDSC, I am enthusiastic about promoting the Flutter framework and fostering a vibrant developer community",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    techStackImages.length,
                    (index) => techStackCircle(
                      techStackImages.values.toList()[index],
                    ),
                  ),
                ),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: List.generate(
                //         2,
                //         (index) => techStackCircle(techStackImages.values
                //             .toList()
                //             .reversed
                //             .toList()[index])))
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
