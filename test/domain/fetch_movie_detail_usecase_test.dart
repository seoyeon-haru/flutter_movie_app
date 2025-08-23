import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_app/domain/entity/movie_detail_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieRepository extends Mock implements MovieRepository {}

void main() {
  FakeMovieRepository? fakeMovieRepository;
  FetchMovieDetailUsecase? fetchMovieDetailUsecase;

  setUp(
    () {
      fakeMovieRepository = FakeMovieRepository();
      fetchMovieDetailUsecase = FetchMovieDetailUsecase(fakeMovieRepository!);
    },
  );

  test('FetchUpComing test : fetchUpComing', () async {
    when(() => fakeMovieRepository!.fetchMovieDetail(any())).thenAnswer(
      (_) async => MovieDetailEntity(
        budget: 400000000,
        genres: ['genres'],
        id: 575265,
        productionCompanies: ['productionCompanies'],
        overview: 'overview',
        popularity: 788.7078,
        releaseDate: DateTime.parse("2025-05-17"),
        revenue: 596513515,
        runtime: 170,
        tagline: 'tagline',
        title: 'title',
        voteAverage: 7.227,
        voteCount: 238,
      ),
    );

    final result = await fetchMovieDetailUsecase!.execute(575265);
    expect(result!.id, 575265);
    expect(result.genres, ['genres']);
  });
}
