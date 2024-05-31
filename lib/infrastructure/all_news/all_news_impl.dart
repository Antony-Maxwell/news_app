import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/core/api_key.dart';
import 'package:news_app/domain/all_news/all_news_service.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/api_endpoints.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: AllNewsService)
class AllNewsImpl implements AllNewsService{
  @override
  Future<Either<MainFailure, AllNews>> getAllNews(int page, {String? category})async {
    String url;
    if(category != null && category.isNotEmpty){
      url = '${ApiEndPoints.categoryVise}?category=$category&apiKey=$apiKey&page=$page&pageSize=10';

    }else{
      url = '${ApiEndPoints.everything}&page=$page&pageSize=10';
    }
    try{
      print(url);
      final Response response = await Dio(BaseOptions()).get(url);
      if(response.statusCode == 200 || response.statusCode == 201){
        final result = AllNews.fromJson(response.data);
        return Right(result);
      }else{
        print('error');
        return const Left(MainFailure.serverFailure());
      }
    }catch (e){
      print('errrrrrrrrrrrrrr');
      return const Left(MainFailure.clientFailure());
    }
  }

}