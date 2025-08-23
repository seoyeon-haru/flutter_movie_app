import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_up_coming_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieRepository extends Mock implements MovieRepository {}

void main() {
  FakeMovieRepository? fakeMovieRepository;
  FetchUpComingUsecase? fetchUpComingUsecase;

  setUp(
    () {
      fakeMovieRepository = FakeMovieRepository();
      fetchUpComingUsecase = FetchUpComingUsecase(fakeMovieRepository!);
    },
  );

  test('FetchUpComing test : fetchUpComing', () async {
    when(() => fakeMovieRepository!.fetchUpComingMovies()).thenAnswer(
      (_) async => [
        MovieEntity(
          id: 500,
          posterPath: 'posterPath',
        ),
      ],
    );

    final result = await fetchUpComingUsecase!.execute();
    expect(result!.first.id, 500);
  });
}
