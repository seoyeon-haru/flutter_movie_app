import 'package:flutter_movie_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';
import 'package:flutter_movie_app/data/repository/movie_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieDataSource extends Mock implements MovieDataSource {}

void main() {
  FakeMovieDataSource? fakeMovieDataSource;
  MovieRepositoryImpl? movieRepositoryImpl;

  setUp(() {
    fakeMovieDataSource = FakeMovieDataSource();
    movieRepositoryImpl = MovieRepositoryImpl(fakeMovieDataSource!);
  });

  test('MovieRepositoryImpl test : fetchNowPlaying', () async {
    // 가짜 클래스 세팅
    when(() => fakeMovieDataSource!.fetchNowPlayingMovies()).thenAnswer(
      (_) async => [MovieResponseDto(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [28, 12, 53],
        id: 575265,
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 788.7078,
        posterPath: 'posterPath',
        releaseDate: DateTime.parse("2025-05-17"),
        title: 'title',
        video: false,
        voteAverage: 7.23,
        voteCount: 1240,
      ),]
    );

    final result = await movieRepositoryImpl!.fetchNowPlayingMovies();
    expect(result, isNotNull);
    expect(result!.isNotEmpty, isTrue);
    expect(result.first.id, 575265);
  });

  test('MovieRepositoryImpl test : fetchPopular', () async {
    // 가짜 클래스 세팅
    when(() => fakeMovieDataSource!.fetchPopularMovies()).thenAnswer(
      (_) async =>[ MovieResponseDto(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [28, 12, 53],
        id: 575265,
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 788.7078,
        posterPath: 'posterPath',
        releaseDate: DateTime.parse("2025-05-17"),
        title: 'title',
        video: false,
        voteAverage: 7.23,
        voteCount: 1240,
      ),]
    );
    final result = await movieRepositoryImpl!.fetchPopularMovies();
    expect(result!.isNotEmpty, isTrue);
    expect(result.first.id, 575265);
  });

  test('MovieRepositoryImpl test : fetchTopRated', () async {
    // 가짜 클래스 세팅
    when(() => fakeMovieDataSource!.fetchTopRatedMovies()).thenAnswer(
      (_) async =>[ MovieResponseDto(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [28, 12, 53],
        id: 575265,
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 788.7078,
        posterPath: 'posterPath',
        releaseDate: DateTime.parse("2025-05-17"),
        title: 'title',
        video: false,
        voteAverage: 7.23,
        voteCount: 1240,
      ),]
    );
    final result = await movieRepositoryImpl!.fetchTopRatedMovies();
    expect(result!.isNotEmpty, isTrue);
    expect(result.first.id, 575265);
  });

  test('MovieRepositoryImpl test : fetchUpComing', () async {
    // 가짜 클래스 세팅
    when(() => fakeMovieDataSource!.fetchUpComingMovies()).thenAnswer(
      (_) async => [MovieResponseDto(
        adult: false,
        backdropPath: 'backdropPath',
        genreIds: [28, 12, 53],
        id: 575265,
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 788.7078,
        posterPath: 'posterPath',
        releaseDate: DateTime.parse("2025-05-17"),
        title: 'title',
        video: false,
        voteAverage: 7.23,
        voteCount: 1240,
      ),]
    );
     final result = await movieRepositoryImpl!.fetchUpComingMovies();
    expect(result!.isNotEmpty, isTrue);
    expect(result.first.id, 575265);
  });

  test('MovieRepositoryImpl test : fetchMovieDetail', () async {
    // 가짜 클래스 세팅
    when(() => fakeMovieDataSource!.fetchMovieDetail(any())).thenAnswer(
      (_) async => MovieDetailDto(
        adult: false,
        backdropPath: 'backdropPath',
        belongsToCollection: BelongsToCollection(
          id: 87359,
          name: 'name',
          posterPath: 'posterPath',
          backdropPath: 'backdropPath',
        ),
        budget: 400000000,
        genres: [Genre(id: 28, name: 'name')],
        homepage: 'homepage',
        id: 575265,
        imdbId: 'imdbId',
        originCountry: ['us'],
        originalLanguage: 'originalLanguage',
        originalTitle: 'originalTitle',
        overview: 'overview',
        popularity: 788.7078,
        posterPath: 'posterPath',
        productionCompanies: [
          ProductionCompany(
            id: 21777,
            logoPath: null,
            name: 'name',
            originCountry: 'originCountry',
          ),
        ],
        productionCountries: [
          ProductionCountry(
            iso31661: 'iso31661',
            name: 'name',
          ),
        ],
        releaseDate: DateTime.parse("2025-05-17"),
        revenue: 596513515,
        runtime: 170,
        spokenLanguages: [
          SpokenLanguage(
            englishName: 'englishName',
            iso6391: 'iso6391',
            name: 'name',
          ),
        ],
        status: 'status',
        tagline: 'tagline',
        title: 'title',
        video: false,
        voteAverage: 7.227,
        voteCount: 1238,
      ),
    );
    final result = await movieRepositoryImpl!.fetchMovieDetail(123);
    expect(result, isNotNull);
    expect(result!.voteCount, 1238);
  });
}
