import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';

class NowPlayingList extends StatelessWidget {
  NowPlayingList({required this.heroTag});
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                '현재 상영중',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              )
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
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) {
                      return DetailPage(heroTag:'현재상영중-$index');
                    },));
                  },
                  child: Hero(
                    tag: '현재상영중-$index',
                    child: Container(
                        width: 130,
                        color: Colors.grey,
                        child: Image.network(
                          'https://picsum.photos/400/500',
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: 20,
          ),
        ),
      ],
    );
  }
}
