import 'package:flutter/material.dart';
import 'package:news_app/core/sizes/sizes.dart';
import 'package:news_app/infrastructure/database/functions/db_functions.dart';
import 'package:news_app/presentation/screens/detailed_screen.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getSavedNews();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Text(
                'Saved articles',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              AppSizes.kHeight1,
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: newsListNotifier,
                  builder: (context, value, child) => 
                  value.isEmpty
                  ? const Center(child: Text('No saved articles yet...!'),)
                  :
                  ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailedScreen(
                                url: value[index].url,
                                image: value[index].image,
                                title: value[index].title,
                                description: value[index].description,
                                author: value[index].author,
                                content: value[index].content,
                                source: value[index].sourceName,
                                formattedDate: value[index].formattedDate,
                                boolVal: true,
                                id: value[index].id!,
                              ),
                            )),
                        leading: SizedBox(
                          height: 100,
                          width: 80,
                          child: Image.network(
                            value[index].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          value[index].title,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => AppSizes.kHeight,
                    itemCount: value.length,
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
