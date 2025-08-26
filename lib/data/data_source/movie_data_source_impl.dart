import 'package:dio/dio.dart';
import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';

class MovieDataSourceImpl implements MovieDataSource {
  Dio client = Dio();

  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    print(id);
    final result = await client.get(
      'https://api.themoviedb.org/3/movie/$id?&page=1&region=KR',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNTQ4N2I5MGNiYzM3ZWYwNjMwMDhiNjE0YTk4ZjkxZSIsIm5iZiI6MTc1NTY3NjE4MC4yNDMsInN1YiI6IjY4YTU3ZTE0YWY4ODgyYzg2NzVkZDJhNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QTvdKHXDf3hyHa3wFB2BrqfnZ--sWV4gxSykxEFxXSw'
        },
      ),
    );
    final data = result.data;
    return MovieDetailDto.fromJson(data);
  }

  @override
  Future<List<MovieResponseDto>?> fetchNowPlayingMovies() async {
    final result = await client.get(
      'https://api.themoviedb.org/3/movie/now_playing?&page=1&region=KR',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNTQ4N2I5MGNiYzM3ZWYwNjMwMDhiNjE0YTk4ZjkxZSIsIm5iZiI6MTc1NTY3NjE4MC4yNDMsInN1YiI6IjY4YTU3ZTE0YWY4ODgyYzg2NzVkZDJhNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QTvdKHXDf3hyHa3wFB2BrqfnZ--sWV4gxSykxEFxXSw'
        },
      ),
    );
    final data = result.data;
    final results = data['results'] as List;
    List<MovieResponseDto> movies = [];
    for (var i = 0; i < results.length; i++) {
      final movie = results[i];

      movies.add(MovieResponseDto.fromJson(movie));
    }
    return movies;
  }

  @override
  Future<List<MovieResponseDto>?> fetchPopularMovies() async {
    final Response result = await client.get(
      'https://api.themoviedb.org/3/movie/popular?&page=1&region=KR',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNTQ4N2I5MGNiYzM3ZWYwNjMwMDhiNjE0YTk4ZjkxZSIsIm5iZiI6MTc1NTY3NjE4MC4yNDMsInN1YiI6IjY4YTU3ZTE0YWY4ODgyYzg2NzVkZDJhNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QTvdKHXDf3hyHa3wFB2BrqfnZ--sWV4gxSykxEFxXSw'
        },
      ),
    );
    final Map<String, dynamic> data = result.data;
    final results = data['results'] as List;
    List<MovieResponseDto> movies = [];
    for (var i = 0; i < results.length; i++) {
      final movie = results[i];

      movies.add(MovieResponseDto.fromJson(movie));
    }
    return movies;
  }

  @override
  Future<List<MovieResponseDto>?> fetchTopRatedMovies() async {
    final Response result = await client.get(
      'https://api.themoviedb.org/3/movie/top_rated?&page=1&ragion=KR',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNTQ4N2I5MGNiYzM3ZWYwNjMwMDhiNjE0YTk4ZjkxZSIsIm5iZiI6MTc1NTY3NjE4MC4yNDMsInN1YiI6IjY4YTU3ZTE0YWY4ODgyYzg2NzVkZDJhNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QTvdKHXDf3hyHa3wFB2BrqfnZ--sWV4gxSykxEFxXSw'
        },
      ),
    );
    final Map<String, dynamic> data = result.data;
    final results = data['results'] as List;
    List<MovieResponseDto> movies = [];
    for (var i = 0; i < results.length; i++) {
      final movie = results[i];

      movies.add(MovieResponseDto.fromJson(movie));
    }
    return movies;
  }

  @override
  Future<List<MovieResponseDto>?> fetchUpComingMovies() async {
    final Response result = await client.get(
      'https://api.themoviedb.org/3/movie/upcoming?&page=1&region=KR',
      options: Options(
        headers: {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIxNTQ4N2I5MGNiYzM3ZWYwNjMwMDhiNjE0YTk4ZjkxZSIsIm5iZiI6MTc1NTY3NjE4MC4yNDMsInN1YiI6IjY4YTU3ZTE0YWY4ODgyYzg2NzVkZDJhNyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.QTvdKHXDf3hyHa3wFB2BrqfnZ--sWV4gxSykxEFxXSw'
        },
      ),
    );
    final Map<String, dynamic> data = result.data;
    final results = data['results'] as List;
    List<MovieResponseDto> movies = [];
    for (var i = 0; i < results.length; i++) {
      final movie = results[i];

      movies.add(MovieResponseDto.fromJson(movie));
    }
    return movies;
  }
}
