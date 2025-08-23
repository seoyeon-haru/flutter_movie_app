import 'package:flutter_movie_app/domain/entity/movie_entity.dart';
import 'package:flutter_movie_app/domain/repository/movie_repository.dart';
import 'package:flutter_movie_app/domain/usecase/fetch_now_playing_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FakeMovieRepository extends Mock implements MovieRepository {}

void main() {
  FakeMovieRepository? fakeMovieRepository;
  FetchNowPlayingUsecase? fetchNowPlayingUsecase;

  setUp(() {
    fakeMovieRepository = FakeMovieRepository();
    fetchNowPlayingUsecase = FetchNowPlayingUsecase(fakeMovieRepository!);
  });

  test('FetchNowPlaying test : fetchNowPlaying', () async {
    when(() => fakeMovieRepository!.fetchNowPlayingMovies())
        .thenAnswer((_) async => [
              MovieEntity(
                id: 575265,
                posterPath: 'posterPath',
              )
            ]);
    final result = await fetchNowPlayingUsecase!.execute();
    expect(result!.first.id, 575265);
  });
}
