import 'package:alkye/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FirstContainer extends StatefulWidget {
  @override
  _FirstContainerState createState() => _FirstContainerState();
}

class _FirstContainerState extends State<FirstContainer> {
  int _currentIndex = 0;
  late ScrollController _scrollController;
  final double _cardWidth = 280; // width of each card
  // final double _cardHeight = 505; // height of each card

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      double page = offset / _cardWidth;
      setState(() {
        _currentIndex = page.round();
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: 5, // number of cards
            itemBuilder: (context, index) {
              return Container(
                  width: _cardWidth, // set the width of each card
                  // height: _cardHeight, // set the width of each card
                  child: firstCard());
            },
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        DotsIndicator(
          dotsCount: 5, // number of cards
          position: _currentIndex.toInt(),
          decorator: DotsDecorator(
            size: const Size.square(8.0),
            activeSize: const Size(102.0, 8.0),
            color: AppColors.dotsColor,
            activeColor: AppColors.dotsColor,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}

//first container widget
Container firstCard() {
  return Container(
    width: 270.0,
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
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/images/youtube.svg',
                        height: 33.0,
                        width: 33.0,
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        'assets/images/star.svg',
                        height: 33.0,
                        width: 33.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 22.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 11.0),
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
                RichText(
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
                const SizedBox(
                  height: 30.0,
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
