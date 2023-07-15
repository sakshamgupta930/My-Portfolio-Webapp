import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:rive/rive.dart';
import 'package:saksham_portfolio/design/constants/app_animations.dart';
import 'package:saksham_portfolio/design/constants/app_images.dart';
import 'package:saksham_portfolio/design/utils/app_colors.dart';
// ignore: depend_on_referenced_packages
import 'package:social_media_flutter/social_media_flutter.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class IntroMobileWidget extends StatelessWidget {
  const IntroMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: RiveAnimation.asset(AppAnimations.introAnimation),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 64,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppImages.selfImage),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        fontFamily: 'Preah',
                        fontSize: 24,
                        height: 1),
                    children: [
                      const TextSpan(
                          text: "Hi! I'm ",
                          style: TextStyle(color: Colors.white)),
                      TextSpan(
                          text: "Saksham Gupta ",
                          style: TextStyle(color: AppColors.purple))
                    ]),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialIcon('https://www.instagram.com/isaksham._',
                        SocialIconsFlutter.instagram),
                    socialIcon('https://github.com/sakshamgupta930',
                        SocialIconsFlutter.github),
                    socialIcon(
                        'https://www.linkedin.com/in/saksham-gupta-496560234',
                        SocialIconsFlutter.linkedin_box),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'A Flutter Developer,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    decoration: TextDecoration.underline, fontSize: 14),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        height: 1.4,
                        fontFamily: 'Preah',
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                    children: [
                      const TextSpan(text: 'Crafting code to bring '),
                      const TextSpan(text: 'ideas to '),
                      TextSpan(
                          text: 'life',
                          style: TextStyle(color: AppColors.purple)),
                      const TextSpan(text: '...')
                    ]),
              ),
              const SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "I'm a Software Developer & focus on ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Preah', fontSize: 16),
                  ),
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Preah',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' Flutter Development ',
                          style: TextStyle(
                              backgroundColor: Colors.yellowAccent,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "To build user-friendly mobile and web applications",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Preah',
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget socialIcon(String link, IconData iconPath) {
    return InkWell(
      onTap: () => html.window.open(link, '_blank'),
      child: SocialWidget(
        placeholderText: '',
        iconData: iconPath,
        iconSize: 20,
        iconColor: Colors.white,
        link: link,
      ),
    );
  }
}
