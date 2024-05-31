part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
    {
      required List<Article> searchResult,
      required bool isLoading,
      required bool hasError,

    }
  ) = _SearchState;

  factory SearchState.initial() => const SearchState(hasError: false, isLoading: false, searchResult: []);
}
