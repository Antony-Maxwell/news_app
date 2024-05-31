import 'package:dartz/dartz.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';

abstract class SearchService{
  Future<Either<MainFailure, AllNews>> searchNews({
    required String newsQuery,
  });
}