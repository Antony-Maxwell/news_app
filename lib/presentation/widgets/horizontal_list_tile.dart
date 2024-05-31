
import 'package:flutter/material.dart';
import 'package:news_app/core/colors/colors.dart';

class HorizontalListViews extends StatelessWidget {
  HorizontalListViews({
    super.key,
  });

  final List<String> listViewTitles = [
    'All',
    'Business',
    'Technology',
    'General',
    'Health',
    'Science',
    'Sports'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 30,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10
              ),
              gradient: const LinearGradient(
        colors: [AppColors.primaryColor, AppColors.containerSecondaryColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
            ),
            child: Center(
              child: Text(
                listViewTitles[index],
                style: const TextStyle(
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          );
        }, separatorBuilder: (context, index) => SizedBox(width: 10,), itemCount: listViewTitles.length),
    );
  }
}
