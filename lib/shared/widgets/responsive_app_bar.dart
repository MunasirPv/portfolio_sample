import 'package:flutter/material.dart';
import 'package:portfolio/shared/styles/text_styles.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 900;
    return AppBar(
      actions: isSmallScreen
          ? [
              IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
            ]
          : [
              actionButton(onPressed: () {}, title: 'About Me'),
              actionButton(onPressed: () {}, title: 'Skills'),
              actionButton(onPressed: () {}, title: 'Projects'),
              actionButton(onPressed: () {}, title: 'Contact Me'),
              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  textStyle: soraS20w600c000000,
                ),
                label: const Text('Resume'),
                icon: const Icon(Icons.file_download_outlined),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.05),
            ],
      centerTitle: false,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!isSmallScreen)
            SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Image.asset('assets/images/logo.png'),
          const Text('Portfolio')
        ],
      ),
      titleTextStyle: soraS20w800c000000,
    );
  }

  TextButton actionButton(
      {required void Function()? onPressed, required String title}) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        textStyle: soraS20w600c000000,
        foregroundColor: Colors.black,
      ),
      child: Text(title),
    );
  }
}
