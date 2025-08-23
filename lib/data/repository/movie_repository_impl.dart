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
    return result.results.map(
      (e) => MovieDetailEntity(
        budget: e.budget,
        genres: e.genres,
        id: e.id,
        productionCompanies: e.productionCompanies,
        overview: e.overview,
        popularity: e.popularity,
        releaseDate: e.releaseDate,
        revenue: e.revenue,
        runtime: e.runtime,
        tagline: e.tagline,
        title: e.title,
        voteAverage: e.voteAverage,
        voteCount: e.voteCount,
      ),
    );
  }

  @override
  Future<List<MovieEntity>?> fetchNowPlayingMovies() async {
    final result = await _movieDataSource.fetchNowPlayingMovies();
    if (result == null) {
      return null;
    }
    return result.results
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
    return result.results
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
    return result.results
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
    return result.results
        .map(
          (e) => MovieEntity(
            id: e.id,
            posterPath: e.posterPath,
          ),
        )
        .toList();
  }
}
