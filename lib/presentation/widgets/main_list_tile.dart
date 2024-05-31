
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:news_app/application/all_news/all_news_bloc.dart';
import 'package:news_app/core/sizes/sizes.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/presentation/screens/detailed_screen.dart';
import 'package:news_app/presentation/widgets/list_tile_card.dart';
import 'package:news_app/presentation/widgets/shimmer.dart';

class NewsListTileMain extends StatefulWidget {
  const NewsListTileMain({super.key});

  @override
  State<NewsListTileMain> createState() => _NewsListTileMainState();
}

class _NewsListTileMainState extends State<NewsListTileMain> {
  final ScrollController _scrollController = ScrollController();
  List news = [];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    context.read<AllNewsBloc>().add(const GetAllNews());
  }

  void _onScroll() {
    if (_scrollController.position.atEdge){
      if(_scrollController.position.pixels != 0){
        BlocProvider.of<AllNewsBloc>(context).add(const LoadMoreNews());
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNewsBloc, AllNewsState>(
      builder: (context, state) {
        if (state.isLoading && state.newsList.isEmpty) {
          return const ShimmerListTile();
        } else if (state.hasError && state.newsList.isEmpty) {
          return const Center(
            child: Text('Error while fetching data...!'),
          );
        } else {
          final filteredNewsList =
              state.newsList.where((news) => news.urlToImage != null && news.author != null).toList();
          return Padding(
            padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
            child: SizedBox(
              height: 900,
              child: 
              filteredNewsList.isEmpty
              ?
              ListView.separated(
                itemBuilder: (context, index) {
                  if(index< state.newsList.length){
                return ListTile(
                  title: Text(
                    state.newsList[index].title!
                  ),
                );
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
              }, 
              separatorBuilder: (context, index) => SizedBox(height: 10,), 
              itemCount: state.newsList.length + (state.isLoadingMore ? 1 : 0))
              :
              ListView.separated(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _scrollController,
                itemBuilder: (context, index) {
                  if (index < filteredNewsList.length) {
                  DateTime dateTime =
                      DateTime.parse(filteredNewsList[index].publishedAt!);
                  String formattedDate =
                      DateFormat('dd MMM yyyy').format(dateTime.toLocal());
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
                    child: ListTileCard(filteredNewsList: filteredNewsList, formattedDate: formattedDate, index: index,),
                  );
                  }else{
                    return Center(child: CircularProgressIndicator(),);
                  }
                },
                separatorBuilder: (context, index) {
                  return AppSizes.kHeight1;
                },
                itemCount: filteredNewsList.length +
                    (state.isLoadingMore ? 1 : 0),
              ),
            ),
          );
        }
      },
    );
  }
}
