import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/all_news/all_news_bloc.dart';
import 'package:news_app/core/colors/colors.dart';
import 'package:news_app/presentation/screens/search_screen.dart';
import 'package:news_app/presentation/widgets/custom_carousel.dart';
import 'package:news_app/presentation/widgets/main_list_tile.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = [
    'All',
    'Sports',
    'Business',
    'General',
    'Health',
    'Science',
    'Technology'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Breaking News', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(Icons.search, size: 30,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen(),));
                  },
                ),
              )
            ],
          ),
          body: NestedScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    expandedHeight: 260.0,
                    floating: false,
                    pinned: true,
                    flexibleSpace: const FlexibleSpaceBar(
                      background: CustomCarousel(),
                    ),
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  AppColors.primaryColor,
                                  AppColors.containerSecondaryColor
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey.shade400),
                          child: TabBar(
                            isScrollable: true,
                            onTap: (index) {
                              final category = categories[index] == 'All' ? null : categories[index];
                              BlocProvider.of<AllNewsBloc>(context).add(AllNewsEvent.getNewsByCategory(category ?? ''));
                            },
                            tabs: categories
                                .map((e) => Tab(
                                      text: e,
                                    ))
                                .toList(),
                            indicatorColor: AppColors.primaryColor,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ];
              },
              body: TabBarView(
                  children: categories.map((e) {
                return const NewsListTileMain();
              }).toList())),
        ),
      ),
    );
  }
}
