import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';

abstract interface class MovieDataSource {
  // 메서드 정의
  Future<MovieResponseDto?> fetchNowPlayingMovies();
  Future<MovieResponseDto?> fetchPopularMovies();
  Future<MovieResponseDto?> fetchTopRatedMovies();
  Future<MovieResponseDto?> fetchUpComingMovies();
  Future<MovieDetailDto?> fetchMovieDetail(int id);
}