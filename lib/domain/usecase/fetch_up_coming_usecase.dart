import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';

class FetchUpComingUsecase {
  FetchUpComingUsecase(this._movieRepository);
  final MovieRepository _movieRepository;

  Future<List<MovieEntity>?> execute() async {
    return await _movieRepository.fetchUpComingMovies();
  }
}
