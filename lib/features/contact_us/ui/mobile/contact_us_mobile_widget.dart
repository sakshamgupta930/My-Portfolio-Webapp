import 'package:flutter/material.dart';
import 'package:saksham_portfolio/design/utils/app_colors.dart';
import 'package:social_media_flutter/widgets/icons.dart';
import 'package:social_media_flutter/widgets/text.dart';
import 'dart:html' as html;

class ContactUsMobileWidget extends StatelessWidget {
  const ContactUsMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 8),
          const Text(
              "If you are a student, developer or just want to chat with me, drop me an interesting mail at 👇"),
          const SizedBox(height: 8),
          Text(
            'guptasaksham3071gmail.com',
            style: TextStyle(color: AppColors.purple),
          ),
          const SizedBox(height: 20),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
          const Divider(),
          const SizedBox(height: 20),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Coded by Saksham with 💚 in India'),
              ],
            ),
          )
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
