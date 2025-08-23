import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_popular_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieRepository extends Mock implements MovieRepository {}

void main() {
  FakeMovieRepository? fakeMovieRepository;
  FetchPopularUsecase? fetchPopularUsecase;

  setUp(
    () {
      fakeMovieRepository = FakeMovieRepository();
      fetchPopularUsecase = FetchPopularUsecase(fakeMovieRepository!);
    },
  );

  test('FetchPopular test : fetchPopular', () async {
    when(() => fakeMovieRepository!.fetchPopularMovies()).thenAnswer(
      (_) async => [
        MovieEntity(
          id: 4,
          posterPath: 'posterPath',
        ),
      ],
    );

    final result = await fetchPopularUsecase!.execute();
    expect(result!.first.id, 4);
  });
}
