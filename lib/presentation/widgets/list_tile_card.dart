
import 'package:flutter/material.dart';
import 'package:news_app/core/sizes/sizes.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    super.key,
    required this.filteredNewsList,
    required this.formattedDate, required this.index,
  });

  final List<Article> filteredNewsList;
  final String formattedDate;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(filteredNewsList[index].urlToImage!),
                fit: BoxFit.cover,
              ),
            ),
            height: double.infinity,
            width: 130,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  Text(
                    filteredNewsList[index].title!,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  AppSizes.kHeight,
                  Text(
                    filteredNewsList[index].description!,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          formattedDate,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          filteredNewsList[index].source!.name!,
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
