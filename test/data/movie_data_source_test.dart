import 'package:flutter_movie_app/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieResponseDto extends Mock implements MovieResponseDto {}

class FakeMovieDetailDto extends Mock implements MovieDetailDto {}

void main() {
  late MovieDataSourceImpl dataSource;
  late MovieResponseDto fakeResponseDto;
  late MovieDetailDto fakeDetailDto;

  setUp(() {
    fakeResponseDto = FakeMovieResponseDto();
    fakeDetailDto = FakeMovieDetailDto();
    dataSource = MovieDataSourceImpl(
   
    );
  });

  test('MovieDataSourceImpl : fetchNowPlaying', () async {
    final result = await dataSource.fetchNowPlayingMovies();
    expect(result, same(fakeResponseDto));
  });

  test('MovieDataSourceImple: fetchPopular', () async {
    final result = await dataSource.fetchPopularMovies();
    expect(result, same(fakeResponseDto));
  });

  test('MovieDataSourceImpl: fetchTopRated', () async {
    final result = await dataSource.fetchTopRatedMovies();
    expect(result, same(fakeResponseDto));
  });

  test('MovieDataSourceImpl: fetchUpComing', () async {
    final result = await dataSource.fetchUpComingMovies();
    expect(result, same(fakeResponseDto));
  });

  test('MovieDataSourceImpl : fetchMovieDetail', ()async{
    final result = await dataSource.fetchMovieDetail(123);
    expect(result, same(fakeDetailDto));
  });
}
