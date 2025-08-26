import 'package:flutter_movie_app/domain/entity/movie_detail_entity.dart';
import 'package:flutter_movie_app/pages/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailState {
  MovieDetailEntity? detailMovie;
  DetailState(this.detailMovie);
}

class DetailViewModel extends FamilyNotifier<DetailState, int> {
  @override
  DetailState build(int arg) {
    touchMovie(arg);
    return DetailState(null);
  }

  void touchMovie(int id) async {
    final fetchMovieDetailUsecase = ref.read(fetchMovieDetailUsecaseProvider);
    final result = await fetchMovieDetailUsecase.execute(id);

    state = DetailState(result);
  }
}

final detailViewModelProvider = NotifierProvider.family<DetailViewModel, DetailState, int>(
  () {
    return DetailViewModel();
  },
);
