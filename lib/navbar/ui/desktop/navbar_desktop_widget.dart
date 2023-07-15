import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:saksham_portfolio/design/utils/app_colors.dart';
import 'package:saksham_portfolio/design/widgets/buttons/app_outlined_button.dart';

class NavBarDesktopWidget extends StatelessWidget {
  const NavBarDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.maxFinite,
      color: AppColors.navBarColor,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                  style:
                      const TextStyle(fontFamily: 'Preah', color: Colors.white),
                  children: [
                    const TextSpan(text: 'Here '),
                    TextSpan(
                      text: 'is my resume ',
                      style: TextStyle(
                          fontFamily: 'Preah', color: AppColors.purple),
                    ),
                    const TextSpan(text: 'click here to download'),
                  ]),
            ),
            const SizedBox(width: 6),
            AppOutlinedButton(
              title: 'Download',
              onTap: () {
                try {
                  html.window.open(
                      'https://drive.google.com/file/d/10qe7IGdB8I71hO7wfXPrZpygtcU72-M7/view?usp=drivesdk',
                      '_blank');
                } catch (e) {
                  print(e.toString());
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
