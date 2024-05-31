part of 'all_news_bloc.dart';

@freezed
class AllNewsState with _$AllNewsState {
  const factory AllNewsState({
    required List<Article> newsList,
    required bool isLoading,
    required bool hasError,
    required bool isLoadingMore,
  }) = _AllNewsState;

  factory AllNewsState.initial() => const AllNewsState(
        newsList: [],
        isLoading: false,
        hasError: false,
        isLoadingMore: false,
      );
}
