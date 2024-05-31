import 'package:dartz/dartz.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';

abstract class AllNewsService{
  Future<Either<MainFailure, AllNews>> getAllNews(int page, {String? category});
}