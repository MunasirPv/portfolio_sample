import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/responsive_app_bar.dart';
import 'package:portfolio/view/about_me/about_me_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ResponsiveAppBar(),
      body: ListView(
        children: const [AboutMePage()],
      ),
    );
  }
}
