import 'package:flutter/material.dart';
import 'package:news_app/presentation/screens/bottom_nav.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const CustomBottomNavigationBar(),), (route) => false);
        },
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/newslogo.png"),
                radius: 180,
              )
            ),
            Text(
              'News Phobia',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              'tap logo to continue'
            )
          ],
        ),
      ),
    );
  }
}