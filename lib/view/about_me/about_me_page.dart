import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/shared/styles/text_styles.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 600;
    if (isSmallScreen) {
      double width = MediaQuery.sizeOf(context).width;
      double horizontalPadding = width * 0.04;
      return Padding(
        padding:
            EdgeInsets.fromLTRB(horizontalPadding, 40, horizontalPadding, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/about-me-image-small.png',
              width: MediaQuery.sizeOf(context).width * 0.91,
            ),
            SizedBox(
              width: width * 0.83,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text.rich(
                  TextSpan(
                    text: 'Hello I am ',
                    style: soraS28w400c000000,
                    children: [
                      TextSpan(
                        text: 'Evren Shah.',
                        style: soraS28w900c000000,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: width * 0.77,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  children: [
                    Text(
                      'Frontend ',
                      style: soraS28w900c000000,
                    ),
                    Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          'Developer',
                          style: GoogleFonts.sora(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.black,
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          'Developer',
                          style: GoogleFonts.sora(
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * 0.56,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text.rich(
                  TextSpan(
                    text: 'Based In ',
                    style: soraS28w400c000000,
                    children: [
                      TextSpan(
                        text: 'India.',
                        style: soraS28w900c000000,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'I\'m Evren Shah Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type andscrambled it to specimen book.',
              style: soraS16w40071717A,
            )
          ],
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(80, 60, 80, 0),
      child: Row(
        children: [
          Expanded(
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Hello I am ',
                      style: soraS48w400c000000,
                      children: [
                        TextSpan(
                          text: 'Evren Shah.',
                          style: soraS48w900c000000,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Frontend ',
                        style: soraS48w900c000000,
                      ),
                      Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Developer',
                            style: GoogleFonts.sora(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Colors.black,
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Developer',
                            style: GoogleFonts.sora(
                              fontSize: 48,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Based In ',
                      style: soraS48w400c000000,
                      children: [
                        TextSpan(
                          text: 'India.',
                          style: soraS48w900c000000,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'I\'m Evren Shah Lorem Ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem Ipsum has been the industry\'s standard\ndummy text ever since the 1500s, when an unknown printer took a\ngalley of type and scrambled it to specimen book.',
                    style: soraS16w40071717A,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Image.asset('assets/images/about-me-image-large.png'),
          ),
        ],
      ),
    );
  }
}
