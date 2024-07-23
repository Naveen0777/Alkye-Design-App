import 'package:alkye/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      width: double.infinity,
      child: Card(
        color: Colors.white,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                bottomLeft: Radius.circular(12.0),
              ),
              child: Image.asset(
                'assets/images/car.png',
                height: 320.0,
                width: 150.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/images/youtube.svg',
                    height: 30.0,
                    width: 33.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      bottom: 10.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/images/circle.svg',
                          height: 13.0,
                          width: 13.0,
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        const Text(
                          'technology',
                          style: TextStyle(
                            fontFamily: 'Scilla',
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120.0,
                    width: 150.0,
                    child: RichText(
                      softWrap: true,
                      text: const TextSpan(
                          text: 'Step Into Tomorrow: ',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Strawford',
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text:
                                  'Exploring Spatial Computing\'s Impact On Industries And The Metaverse!',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Strawford',
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 45.0,
                  ),
                  const Text(
                    '24 Feb 2024',
                    style: TextStyle(
                      color: AppColors.greyFontColor,
                      fontSize: 12.0,
                      fontFamily: 'Scilla',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SocialMediaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225.0,
      child: Card(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(12.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/car.png',
                    height: 250.0,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      top: 22.0,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/insta.svg',
                      height: 33.0,
                      width: 33.0,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 25.0,
              ),
              child: Text(
                'The Ultimate GuideTo Simplifying Your Routine With Generative AI Automation!',
                style: TextStyle(
                  fontFamily: 'Strawford',
                  fontWeight: FontWeight.w400,
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
