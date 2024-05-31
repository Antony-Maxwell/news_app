part of 'all_news_bloc.dart';

@freezed
class AllNewsEvent with _$AllNewsEvent {
  const factory AllNewsEvent.getAllNews() = GetAllNews;

  const factory AllNewsEvent.loadMoreNews() = LoadMoreNews;

  const factory AllNewsEvent.getNewsByCategory(String category) = GetNewsByCategory;
}