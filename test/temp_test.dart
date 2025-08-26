import 'package:flutter_movie_app/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('요청테스트', () async {
    final dataSource = MovieDataSourceImpl();
    await dataSource.fetchNowPlayingMovies();
  });
}
