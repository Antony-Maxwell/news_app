
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/colors/colors.dart';
import 'package:news_app/infrastructure/database/functions/db_functions.dart';
import 'package:news_app/infrastructure/database/model/save_list.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.content,
    required this.author, required this.source, required this.formattedDate, required this.isFromSaved, required this.id, required this.url,
  });

  final String image;
  final String title;
  final String description;
  final String content;
  final String author;
  final String source;
  final String formattedDate;
  final bool isFromSaved;
  final int id;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final _news = SaveNewsList(image: image, title: title, description: description, content: content, author: author, sourceName: source, formattedDate: formattedDate, url: url);
        isFromSaved
        ? deleteSavedNews(id, context)
        :
        saveNews(_news, context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.containerSecondaryColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Center(
          child: Text(
            isFromSaved
            ? 'Remove article'
            :
            'Save article',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
