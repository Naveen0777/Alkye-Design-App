import 'package:alkye/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BottomNavigation()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/images/logo2.svg',
                height: 107.0,
                width: 105.0,
              ),
            ),
            const SizedBox(
              height: 120.0,
            ),
            SvgPicture.asset(
              'assets/images/Aneesh-Bond.svg',
              fit: BoxFit.contain,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              radius: 34.0,
            )
          ],
        ),
      ),
    );
  }
}
