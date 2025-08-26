import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_movie_app/data/repository/movie_repository_impl.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_now_playing_usecase.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_popular_usecase.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_top_rated_usecase.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_up_coming_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ViewModel 에서 직접 객체 생성하지 않을 수 있게
// UseCase 공급해주는 Provider 생성
// ViewModel 내에서는 Provider에 의해서 UseCase 공급받기!

final _movieDataSorceProvider = Provider<MovieDataSource>(
  (ref) {
    return MovieDataSourceImpl();
  },
);

final _movieRepositoryProvider = Provider<MovieRepository>(
  (ref) {
    return MovieRepositoryImpl(ref.read(_movieDataSorceProvider));
  },
);

final fetchNowPlayingUsecaseProvider = Provider(
  (ref) {
    return FetchNowPlayingUsecase(ref.read(_movieRepositoryProvider));
  },
);

final fetchPopularUsecaseProvider = Provider(
  (ref) {
    return FetchPopularUsecase(ref.read(_movieRepositoryProvider));
  },
);

final fetchTopRatedUsecaseProvider = Provider(
  (ref) {
    return FetchTopRatedUsecase(ref.read(_movieRepositoryProvider));
  },
);

final fetchUpComingUsecaseProvider = Provider(
  (ref) {
    return FetchUpComingUsecase(ref.read(_movieRepositoryProvider));
  },
);

final fetchMovieDetailUsecaseProvider = Provider(
  (ref) {
    return FetchMovieDetailUsecase(ref.read(_movieRepositoryProvider));
  },
);
