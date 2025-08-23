import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_top_rated_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieRepository extends Mock implements MovieRepository {}

void main() {
  FakeMovieRepository? fakeMovieRepository;
  FetchTopRatedUsecase? fetchTopRatedUsecase;

  setUp(
    () {
      fakeMovieRepository = FakeMovieRepository();
      fetchTopRatedUsecase = FetchTopRatedUsecase(fakeMovieRepository!);
    },
  );

  test('FetchTopRated test : fetchTopRated', () async {
    when(() => fakeMovieRepository!.fetchTopRatedMovies()).thenAnswer(
      (_) async => [
        MovieEntity(
          id: 50,
          posterPath: 'posterPath',
        ),
      ],
    );

    final result = await fetchTopRatedUsecase!.execute();
    expect(result!.first.id, 50);
  });
}
