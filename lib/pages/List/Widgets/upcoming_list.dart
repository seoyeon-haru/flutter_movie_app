import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/List/list_view_model.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpcomingList extends ConsumerWidget {
  UpcomingList({required this.heroTag});
  final String heroTag;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final result = ref.watch(listViewModelProvider);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                '개봉 예정',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          // 가로 스크롤 시 높이 지정 필요
          height: 180,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final movie = result.upComing[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return DetailPage(heroTag: '개봉예정-$index', id: movie.id, posterPath: movie.posterPath);
                      },
                    ));
                  },
                  child: Hero(
                    tag: '개봉예정-$index',
                    child: Container(
                        width: 130,
                        color: Colors.grey,
                        child: Image.network(
                          'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: result.upComing.length,
          ),
        ),
      ],
    );
  }
}
