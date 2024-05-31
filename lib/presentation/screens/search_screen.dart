import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:news_app/application/search/search_bloc.dart';
import 'package:news_app/core/colors/colors.dart';
import 'package:news_app/core/sizes/sizes.dart';
import 'package:news_app/domain/debouncer/debouncer.dart';
import 'package:news_app/presentation/screens/detailed_screen.dart';
import 'package:news_app/presentation/widgets/list_tile_card.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 40,
                      child: CupertinoTextField(
                        onChanged: (value) {
                          if (value.isEmpty) {
                            return;
                          }
                          _debouncer.run(() {
                            BlocProvider.of<SearchBloc>(context)
                                .add(SearchEvent.searchNews(newsQuery: value));
                          });
                        },
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: const Border.symmetric(
                            horizontal: BorderSide(color: Colors.grey),
                          ),
                        ),
                        placeholder: 'Search for news...',
                        placeholderStyle: const TextStyle(
                          color: Colors.black,
                        ),
                        suffix: const Icon(Icons.search_rounded),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              AppSizes.kHeight1,
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state.hasError) {
                    return const Center(
                      child: Text('Error while fetching data'),
                    );
                  } else if (state.searchResult.isEmpty) {
                    return const Center(
                      child: Text('Search your news...'),
                    );
                  } else {
                    print(state.searchResult.length); // Debug print statement
                    return Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => AppSizes.kHeight,
                        itemCount: state.searchResult.length,
                        itemBuilder: (context, index) {
                          final filteredNewsList = state.searchResult
                              .where((news) =>
                                  news.urlToImage != null &&
                                  news.author != null)
                              .toList();
                          DateTime dateTime = DateTime.parse(
                              filteredNewsList[index].publishedAt!);
                          String formattedDate = DateFormat('dd MMM yyyy')
                              .format(dateTime.toLocal());
                          return GestureDetector(
                            onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailedScreen(
                            url: filteredNewsList[index].url!,
                            id: 0,
                            boolVal: false,
                            formattedDate: formattedDate,
                            source: filteredNewsList[index].source!.name!,
                            image: filteredNewsList[index].urlToImage!,
                            title: filteredNewsList[index].title!,
                            description: filteredNewsList[index].description!,
                            author: filteredNewsList[index].author!,
                            content: filteredNewsList[index].content!,
                          ),
                        ),
                      );
                    },
                            child: ListTileCard(
                                filteredNewsList: filteredNewsList,
                                formattedDate: formattedDate,
                                index: index),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
