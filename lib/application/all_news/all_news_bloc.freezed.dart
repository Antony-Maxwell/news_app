// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllNewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNews,
    required TResult Function() loadMoreNews,
    required TResult Function(String category) getNewsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNews,
    TResult? Function()? loadMoreNews,
    TResult? Function(String category)? getNewsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNews,
    TResult Function()? loadMoreNews,
    TResult Function(String category)? getNewsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNews value) getAllNews,
    required TResult Function(LoadMoreNews value) loadMoreNews,
    required TResult Function(GetNewsByCategory value) getNewsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNews value)? getAllNews,
    TResult? Function(LoadMoreNews value)? loadMoreNews,
    TResult? Function(GetNewsByCategory value)? getNewsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNews value)? getAllNews,
    TResult Function(LoadMoreNews value)? loadMoreNews,
    TResult Function(GetNewsByCategory value)? getNewsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllNewsEventCopyWith<$Res> {
  factory $AllNewsEventCopyWith(
          AllNewsEvent value, $Res Function(AllNewsEvent) then) =
      _$AllNewsEventCopyWithImpl<$Res, AllNewsEvent>;
}

/// @nodoc
class _$AllNewsEventCopyWithImpl<$Res, $Val extends AllNewsEvent>
    implements $AllNewsEventCopyWith<$Res> {
  _$AllNewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllNewsImplCopyWith<$Res> {
  factory _$$GetAllNewsImplCopyWith(
          _$GetAllNewsImpl value, $Res Function(_$GetAllNewsImpl) then) =
      __$$GetAllNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllNewsImplCopyWithImpl<$Res>
    extends _$AllNewsEventCopyWithImpl<$Res, _$GetAllNewsImpl>
    implements _$$GetAllNewsImplCopyWith<$Res> {
  __$$GetAllNewsImplCopyWithImpl(
      _$GetAllNewsImpl _value, $Res Function(_$GetAllNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllNewsImpl with DiagnosticableTreeMixin implements GetAllNews {
  const _$GetAllNewsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AllNewsEvent.getAllNews()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AllNewsEvent.getAllNews'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNews,
    required TResult Function() loadMoreNews,
    required TResult Function(String category) getNewsByCategory,
  }) {
    return getAllNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNews,
    TResult? Function()? loadMoreNews,
    TResult? Function(String category)? getNewsByCategory,
  }) {
    return getAllNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNews,
    TResult Function()? loadMoreNews,
    TResult Function(String category)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (getAllNews != null) {
      return getAllNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNews value) getAllNews,
    required TResult Function(LoadMoreNews value) loadMoreNews,
    required TResult Function(GetNewsByCategory value) getNewsByCategory,
  }) {
    return getAllNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNews value)? getAllNews,
    TResult? Function(LoadMoreNews value)? loadMoreNews,
    TResult? Function(GetNewsByCategory value)? getNewsByCategory,
  }) {
    return getAllNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNews value)? getAllNews,
    TResult Function(LoadMoreNews value)? loadMoreNews,
    TResult Function(GetNewsByCategory value)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (getAllNews != null) {
      return getAllNews(this);
    }
    return orElse();
  }
}

abstract class GetAllNews implements AllNewsEvent {
  const factory GetAllNews() = _$GetAllNewsImpl;
}

/// @nodoc
abstract class _$$LoadMoreNewsImplCopyWith<$Res> {
  factory _$$LoadMoreNewsImplCopyWith(
          _$LoadMoreNewsImpl value, $Res Function(_$LoadMoreNewsImpl) then) =
      __$$LoadMoreNewsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreNewsImplCopyWithImpl<$Res>
    extends _$AllNewsEventCopyWithImpl<$Res, _$LoadMoreNewsImpl>
    implements _$$LoadMoreNewsImplCopyWith<$Res> {
  __$$LoadMoreNewsImplCopyWithImpl(
      _$LoadMoreNewsImpl _value, $Res Function(_$LoadMoreNewsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreNewsImpl with DiagnosticableTreeMixin implements LoadMoreNews {
  const _$LoadMoreNewsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AllNewsEvent.loadMoreNews()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AllNewsEvent.loadMoreNews'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreNewsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNews,
    required TResult Function() loadMoreNews,
    required TResult Function(String category) getNewsByCategory,
  }) {
    return loadMoreNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNews,
    TResult? Function()? loadMoreNews,
    TResult? Function(String category)? getNewsByCategory,
  }) {
    return loadMoreNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNews,
    TResult Function()? loadMoreNews,
    TResult Function(String category)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (loadMoreNews != null) {
      return loadMoreNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNews value) getAllNews,
    required TResult Function(LoadMoreNews value) loadMoreNews,
    required TResult Function(GetNewsByCategory value) getNewsByCategory,
  }) {
    return loadMoreNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNews value)? getAllNews,
    TResult? Function(LoadMoreNews value)? loadMoreNews,
    TResult? Function(GetNewsByCategory value)? getNewsByCategory,
  }) {
    return loadMoreNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNews value)? getAllNews,
    TResult Function(LoadMoreNews value)? loadMoreNews,
    TResult Function(GetNewsByCategory value)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (loadMoreNews != null) {
      return loadMoreNews(this);
    }
    return orElse();
  }
}

abstract class LoadMoreNews implements AllNewsEvent {
  const factory LoadMoreNews() = _$LoadMoreNewsImpl;
}

/// @nodoc
abstract class _$$GetNewsByCategoryImplCopyWith<$Res> {
  factory _$$GetNewsByCategoryImplCopyWith(_$GetNewsByCategoryImpl value,
          $Res Function(_$GetNewsByCategoryImpl) then) =
      __$$GetNewsByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetNewsByCategoryImplCopyWithImpl<$Res>
    extends _$AllNewsEventCopyWithImpl<$Res, _$GetNewsByCategoryImpl>
    implements _$$GetNewsByCategoryImplCopyWith<$Res> {
  __$$GetNewsByCategoryImplCopyWithImpl(_$GetNewsByCategoryImpl _value,
      $Res Function(_$GetNewsByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetNewsByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetNewsByCategoryImpl
    with DiagnosticableTreeMixin
    implements GetNewsByCategory {
  const _$GetNewsByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AllNewsEvent.getNewsByCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AllNewsEvent.getNewsByCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNewsByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNewsByCategoryImplCopyWith<_$GetNewsByCategoryImpl> get copyWith =>
      __$$GetNewsByCategoryImplCopyWithImpl<_$GetNewsByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllNews,
    required TResult Function() loadMoreNews,
    required TResult Function(String category) getNewsByCategory,
  }) {
    return getNewsByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllNews,
    TResult? Function()? loadMoreNews,
    TResult? Function(String category)? getNewsByCategory,
  }) {
    return getNewsByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllNews,
    TResult Function()? loadMoreNews,
    TResult Function(String category)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (getNewsByCategory != null) {
      return getNewsByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllNews value) getAllNews,
    required TResult Function(LoadMoreNews value) loadMoreNews,
    required TResult Function(GetNewsByCategory value) getNewsByCategory,
  }) {
    return getNewsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllNews value)? getAllNews,
    TResult? Function(LoadMoreNews value)? loadMoreNews,
    TResult? Function(GetNewsByCategory value)? getNewsByCategory,
  }) {
    return getNewsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllNews value)? getAllNews,
    TResult Function(LoadMoreNews value)? loadMoreNews,
    TResult Function(GetNewsByCategory value)? getNewsByCategory,
    required TResult orElse(),
  }) {
    if (getNewsByCategory != null) {
      return getNewsByCategory(this);
    }
    return orElse();
  }
}

abstract class GetNewsByCategory implements AllNewsEvent {
  const factory GetNewsByCategory(final String category) =
      _$GetNewsByCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$GetNewsByCategoryImplCopyWith<_$GetNewsByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllNewsState {
  List<Article> get newsList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllNewsStateCopyWith<AllNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllNewsStateCopyWith<$Res> {
  factory $AllNewsStateCopyWith(
          AllNewsState value, $Res Function(AllNewsState) then) =
      _$AllNewsStateCopyWithImpl<$Res, AllNewsState>;
  @useResult
  $Res call(
      {List<Article> newsList,
      bool isLoading,
      bool hasError,
      bool isLoadingMore});
}

/// @nodoc
class _$AllNewsStateCopyWithImpl<$Res, $Val extends AllNewsState>
    implements $AllNewsStateCopyWith<$Res> {
  _$AllNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsList = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_value.copyWith(
      newsList: null == newsList
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllNewsStateImplCopyWith<$Res>
    implements $AllNewsStateCopyWith<$Res> {
  factory _$$AllNewsStateImplCopyWith(
          _$AllNewsStateImpl value, $Res Function(_$AllNewsStateImpl) then) =
      __$$AllNewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Article> newsList,
      bool isLoading,
      bool hasError,
      bool isLoadingMore});
}

/// @nodoc
class __$$AllNewsStateImplCopyWithImpl<$Res>
    extends _$AllNewsStateCopyWithImpl<$Res, _$AllNewsStateImpl>
    implements _$$AllNewsStateImplCopyWith<$Res> {
  __$$AllNewsStateImplCopyWithImpl(
      _$AllNewsStateImpl _value, $Res Function(_$AllNewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newsList = null,
    Object? isLoading = null,
    Object? hasError = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$AllNewsStateImpl(
      newsList: null == newsList
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllNewsStateImpl with DiagnosticableTreeMixin implements _AllNewsState {
  const _$AllNewsStateImpl(
      {required final List<Article> newsList,
      required this.isLoading,
      required this.hasError,
      required this.isLoadingMore})
      : _newsList = newsList;

  final List<Article> _newsList;
  @override
  List<Article> get newsList {
    if (_newsList is EqualUnmodifiableListView) return _newsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;
  @override
  final bool isLoadingMore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AllNewsState(newsList: $newsList, isLoading: $isLoading, hasError: $hasError, isLoadingMore: $isLoadingMore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AllNewsState'))
      ..add(DiagnosticsProperty('newsList', newsList))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('hasError', hasError))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllNewsStateImpl &&
            const DeepCollectionEquality().equals(other._newsList, _newsList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newsList),
      isLoading,
      hasError,
      isLoadingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllNewsStateImplCopyWith<_$AllNewsStateImpl> get copyWith =>
      __$$AllNewsStateImplCopyWithImpl<_$AllNewsStateImpl>(this, _$identity);
}

abstract class _AllNewsState implements AllNewsState {
  const factory _AllNewsState(
      {required final List<Article> newsList,
      required final bool isLoading,
      required final bool hasError,
      required final bool isLoadingMore}) = _$AllNewsStateImpl;

  @override
  List<Article> get newsList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  bool get isLoadingMore;
  @override
  @JsonKey(ignore: true)
  _$$AllNewsStateImplCopyWith<_$AllNewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
