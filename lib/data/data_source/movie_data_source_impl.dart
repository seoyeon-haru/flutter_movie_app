import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';

class MovieDataSourceImpl implements MovieDataSource {
  MovieDataSourceImpl(
      {required this.movieResponseDto, required this.movieDetailDto});

  final MovieResponseDto movieResponseDto;
  final MovieDetailDto movieDetailDto;

  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    return movieDetailDto;
  }

  @override
  Future<List<MovieResponseDto>?> fetchNowPlayingMovies() async {
    return [movieResponseDto];
  }

  @override
  Future<List<MovieResponseDto>?> fetchPopularMovies() async {
    return [movieResponseDto];
  }

  @override
  Future<List<MovieResponseDto>?> fetchTopRatedMovies() async {
    return [movieResponseDto];
  }

  @override
  Future<List<MovieResponseDto>?> fetchUpComingMovies() async {
    return [movieResponseDto];
  }
}
