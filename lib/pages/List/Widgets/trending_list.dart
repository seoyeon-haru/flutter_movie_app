import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/List/list_view_model.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrendingList extends ConsumerWidget {
  TrendingList({required this.heroTag});
  final String heroTag;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(listViewModelProvider);
    final movie = result.popular.firstOrNull;
    if (movie == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '가장 인기있는',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return DetailPage(heroTag: '가장인기있는', id: movie.id, posterPath: movie.posterPath);
                },
              ));
            },
            child: Hero(
              tag: '가장인기있는',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  color: Colors.grey,
                  child: Image.network(
                   'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
