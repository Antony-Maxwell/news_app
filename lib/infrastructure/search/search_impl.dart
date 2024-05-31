import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/core/api_key.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';
import 'package:news_app/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchImpl implements SearchService{
  @override
  Future<Either<MainFailure, AllNews>> searchNews({required String newsQuery})async {
    String url = 'https://newsapi.org/v2/everything?q=$newsQuery&from=2024-05-31&to=2024-05-30&sortBy=popularity&apiKey=$apiKey';
    try{
      final Response response = await Dio(BaseOptions()).get(url);
      if(response.statusCode == 200 || response.statusCode == 201){
        final result = AllNews.fromJson(response.data);
        return Right(result);
      }else{
        return const Left(MainFailure.serverFailure());
      }
    }catch (e){
      return const Left(MainFailure.clientFailure());
    }
  }

}