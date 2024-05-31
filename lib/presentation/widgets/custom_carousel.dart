import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/application/all_news/all_news_bloc.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllNewsBloc, AllNewsState>(
      builder: (context, state) {
        if(state.isLoading){
          return const Center(child: CircularProgressIndicator(),);
        }else if(state.newsList.isEmpty){
          return const Center(child: CircularProgressIndicator(),);
        }
        final List<String> images = state.newsList
            .where((news) => news.urlToImage != null && news.urlToImage!.isNotEmpty)
            .map((news) => news.urlToImage!)
            .toList();
        return CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (context, index, realIndex) {
            return 
            images.isEmpty
            ? Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey, 
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'No image is Available'
                    ),
                  ),
            )
            :
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey, 
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    onError: (exception, stackTrace) => const Icon(Icons.error),
                    image: NetworkImage(images[index]), fit: BoxFit.cover)
                  ),
            );
          },
          options: CarouselOptions(
            viewportFraction: 0.7,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
        );
      },
    );
  }
}
