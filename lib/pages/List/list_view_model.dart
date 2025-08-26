import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/pages/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 1. 상태클래스 만들기
class ListState {
  List<MovieEntity> nowPlayingMovies;
  List<MovieEntity> popular;
  List<MovieEntity> topRated;
  List<MovieEntity> upComing;

  ListState({
    required this.nowPlayingMovies,
    required this.popular,
    required this.topRated,
    required this.upComing,
  });
}

// 2.  뷰모델 만들기
class ListViewModel extends Notifier<ListState> {
  @override
  ListState build() {
    loadMovies();
    return ListState(
      nowPlayingMovies: [],
      popular: [],
      topRated: [],
      upComing: [],
    );
  }

  void loadMovies() async {
    final fetchNowPlayingUsecase = ref.read(fetchNowPlayingUsecaseProvider);
    final result = await fetchNowPlayingUsecase.execute();
    final fetchPopularUsecase = ref.read(fetchPopularUsecaseProvider);
    final result1 = await fetchPopularUsecase.execute();
    final fetchTopRatedUsecase = ref.read(fetchTopRatedUsecaseProvider);
    final result2 = await fetchTopRatedUsecase.execute();
    final fetchUpComingUsecase = ref.read(fetchUpComingUsecaseProvider);
    final result3 = await fetchUpComingUsecase.execute();

    state = ListState(
      nowPlayingMovies: result ?? [],
      popular: result1 ?? [],
      topRated: result2 ?? [],
      upComing: result3 ?? [],
    );
  }
}

// 3. 관리자 만들기
final listViewModelProvider = NotifierProvider<ListViewModel, ListState>(
  () {
    return ListViewModel();
  },
);
