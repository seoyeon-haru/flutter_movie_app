import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/entity/movie_detail_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._movieDataSource);
  final MovieDataSource _movieDataSource;

  @override
  Future<MovieDetailEntity?> fetchMovieDetail(int id) async {
    final result = await _movieDataSource.fetchMovieDetail(id);
    if (result == null) {
      return null;
    }
    return MovieDetailEntity(
      budget: result.budget,
      genres: (result.genres.map((g) => g.name).toList()),
      id: result.id,
      productionCompanies: (result.productionCompanies
          .map((c) => c.logoPath ?? c.name)
          .whereType<String>()
          .toList()),
      overview: result.overview,
      popularity: result.popularity,
      releaseDate: result.releaseDate,
      revenue: result.revenue,
      runtime: result.runtime,
      tagline: result.tagline,
      title: result.title,
      voteAverage: result.voteAverage,
      voteCount: result.voteCount,
    );
  }

  @override
  Future<List<MovieEntity>?> fetchNowPlayingMovies() async {
    final result = await _movieDataSource.fetchNowPlayingMovies();
    if (result == null) {
      return null;
    }
    return result
        .map(
          (e) => MovieEntity(
            id: e.id,
            posterPath: e.posterPath,
          ),
        )
        .toList();
  }

  @override
  Future<List<MovieEntity>?> fetchPopularMovies() async {
    final result = await _movieDataSource.fetchPopularMovies();
    if (result == null) {
      return null;
    }
    return result
        .map(
          (e) => MovieEntity(
            id: e.id,
            posterPath: e.posterPath,
          ),
        )
        .toList();
  }

  @override
  Future<List<MovieEntity>?> fetchTopRatedMovies() async {
    final result = await _movieDataSource.fetchTopRatedMovies();
    if (result == null) {
      return null;
    }
    return result
        .map(
          (e) => MovieEntity(
            id: e.id,
            posterPath: e.posterPath,
          ),
        )
        .toList();
  }

  @override
  Future<List<MovieEntity>?> fetchUpComingMovies() async {
    final result = await _movieDataSource.fetchUpComingMovies();
    if (result == null) {
      return null;
    }
    return result
        .map(
          (e) => MovieEntity(
            id: e.id,
            posterPath: e.posterPath,
          ),
        )
        .toList();
  }
}
