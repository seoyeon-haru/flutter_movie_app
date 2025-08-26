import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_view_model.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_content.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPage extends ConsumerWidget {
  DetailPage(
      {required this.heroTag, required this.id, required this.posterPath});
  final String heroTag;
  int id;
  String posterPath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(detailViewModelProvider(id));
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 69,
              width: 69,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              MovieImage(heroTag: heroTag, posterPath: posterPath),
              SizedBox(height: 10),
              MovieContent(state),
            ],
          ),
        ],
      ),
    );
  }
}
