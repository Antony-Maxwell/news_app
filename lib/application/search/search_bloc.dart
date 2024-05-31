import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';
import 'package:news_app/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';


@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchService _searchService;
  SearchBloc(this._searchService) : super(SearchState.initial()) {
    on<searchNews>((event, emit) async{
      emit(const SearchState(searchResult: [], isLoading: true, hasError: false));

      final _result = await _searchService.searchNews(newsQuery: event.newsQuery);

      final _state = _result.fold((MainFailure f) {
        return SearchState(searchResult: [], isLoading: false, hasError: true);
      }, (AllNews r) {
        print(r.articles.length);
        return SearchState(searchResult: r.articles, isLoading: false, hasError: false);
      }
      
      );
      emit(_state);
      print(_result);
    });
  }
}
