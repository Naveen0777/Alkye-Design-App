import 'package:alkye/colors.dart';
import 'package:alkye/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Stack(
        children: [
          MyHomePage(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(25.0),
              decoration: const BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 40.0,
                      spreadRadius: 0.5)
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(50.0),
                ),
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/images/book-open.svg',
                        color: Colors.black,
                      ),
                      label: 'Book',
                      backgroundColor: Colors.white,
                      activeIcon: Container(
                        decoration: const BoxDecoration(
                            color: Colors.black, shape: BoxShape.circle),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                            'assets/images/book-open.svg',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/images/bookmark.svg',
                        color: Colors.black,
                      ),
                      label: 'Bookmark',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/images/tv.svg',
                        color: Colors.black,
                      ),
                      label: 'Video',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/images/bell.svg',
                        color: Colors.black,
                      ),
                      label: 'Notification',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/images/user.svg',
                        color: Colors.black,
                      ),
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
