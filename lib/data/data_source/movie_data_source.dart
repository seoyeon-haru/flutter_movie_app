import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';

abstract interface class MovieDataSource {
  // 메서드 정의
  Future<List<MovieResponseDto>?> fetchNowPlayingMovies();
  Future<List<MovieResponseDto>?> fetchPopularMovies();
  Future<List<MovieResponseDto>?> fetchTopRatedMovies();
  Future<List<MovieResponseDto>?> fetchUpComingMovies();
  Future<MovieDetailDto?> fetchMovieDetail(int id);
}