import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:news_app/domain/all_news/all_news_service.dart';
import 'package:news_app/domain/all_news/model/all_news/all_news.dart';
import 'package:news_app/domain/core/failures/main_failures.dart';

part 'all_news_event.dart';
part 'all_news_state.dart';
part 'all_news_bloc.freezed.dart';

@injectable
class AllNewsBloc extends Bloc<AllNewsEvent, AllNewsState> {
  final AllNewsService _allNewsService;
  int currentPage = 1;
  String? currentCategory;
  
  AllNewsBloc(this._allNewsService) : super(AllNewsState.initial()) {
    on<GetAllNews>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false));
      
      final _result = await _allNewsService.getAllNews(currentPage, );
      _result.fold(
        (MainFailure f) {
          emit(state.copyWith(isLoading: false, hasError: true));
        },
        (AllNews r) {
          emit(state.copyWith(
            newsList: r.articles,
            isLoading: false,
            hasError: false,
          ));
          currentPage++;
        },
      );
    });

    on<LoadMoreNews>((event, emit) async {
      if (state.isLoadingMore) return;

      emit(state.copyWith(isLoadingMore: true));
      
      final result = await _allNewsService.getAllNews(currentPage, category: currentCategory);

      result.fold(
        (MainFailure f) {
          emit(state.copyWith(isLoadingMore: false));
        },
        (AllNews r) {
          emit(state.copyWith(
            newsList: List.of(state.newsList)..addAll(r.articles),
            isLoadingMore: false,
          ));
          currentPage++;
        },
      );
    });

    on<GetNewsByCategory>((event, emit) async{
      emit(state.copyWith(isLoading: true, hasError: false));
      currentCategory = event.category;
      currentPage = 1;

      final _result = await _allNewsService.getAllNews(currentPage, category: event.category);
      _result.fold((MainFailure f){
        emit(state.copyWith(isLoading: false, hasError: true));
      } , (AllNews r) {
        emit(state.copyWith(
          newsList: r.articles,
          isLoading: false,
          hasError: false,
        ));
      });
      currentPage++;
    });
  }
}
