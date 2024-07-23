import 'package:alkye/article_card.dart';
import 'package:alkye/colors.dart';
import 'package:alkye/first_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/images/logo2.svg',
                      height: 43.0,
                      width: 43.0,
                    ),
                    SizedBox(
                      width: 150.0,
                      height: 40.0,
                      child: SearchBar(
                        shadowColor: const WidgetStatePropertyAll(
                          Colors.transparent,
                        ),
                        backgroundColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                        overlayColor: const WidgetStatePropertyAll(
                          Colors.white,
                        ),
                        hintText: 'Search ...',
                        hintStyle: const WidgetStatePropertyAll(TextStyle(
                          color: AppColors.greyFontColor,
                          fontSize: 14.0,
                          fontFamily: 'Strawford',
                          fontWeight: FontWeight.w500,
                        )),
                        trailing: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset(
                              'assets/images/search.svg',
                              color: AppColors.greyFontColor,
                              height: 18.0,
                              width: 18.0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 485.0,
                  child: FirstContainer(),
                ),
              ),

              // Recent Articles Section
              const SizedBox(
                height: 35.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Recent Articles',
                  style: TextStyle(
                    fontFamily: 'Strawford',
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: SecondCard(),
                      );
                    }),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      Colors.white,
                    )),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 36.0,
                      ),
                      child: Text(
                        'View all',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontFamily: 'Strawford',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Social Connect Section
              Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'Social Connect',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                          color: Colors.white,
                          fontFamily: 'Strawford',
                        ),
                      ),
                      const SizedBox(
                        width: 230.0,
                        child: Text(
                          'Stay updated with my latest post on your favorite platforms',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Strawford',
                            fontWeight: FontWeight.w400,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 450.0,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 12.0,
                                  ),
                                  child: SocialMediaCard(),
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 90.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
