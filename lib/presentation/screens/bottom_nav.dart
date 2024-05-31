import 'package:flutter/material.dart';
import 'package:news_app/core/colors/colors.dart';
import 'package:news_app/presentation/screens/home_screen.dart';
import 'package:news_app/presentation/screens/profile_screen.dart';
import 'package:news_app/presentation/screens/saved_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      CustomBottomNavigationBarState();
}

class CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  List pages = [
    HomeScreen(),
    SavedScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages.elementAt(currentIndex),
          Align(
            alignment: Alignment(0.0, 1.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 25,
                    offset: const Offset(8, 20))
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                    onTap: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    backgroundColor: Colors.white,
                    selectedItemColor: AppColors.primaryColor,
                    unselectedItemColor: Colors.black,
                    currentIndex: currentIndex,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home), label: 'Home'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite), label: 'Saved'),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: 'Profile'),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
