import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';

class PopularList extends StatelessWidget {
    PopularList({required this.heroTag});
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
                '인기순',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),

        /// ListView 안에 ListView 를 넣은 것이라
        /// 위에 ListView 는 상하 스크롤이라 높이가 무한
        /// 아래 ListView 는 높이를 몰라서 적어줘야 함
        SizedBox(
          // 가로 스크롤 시 높이 지정 필요
          height: 180,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 150,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) {
                              return DetailPage(heroTag: '인기순-$index');
                            },));
                          },
                          child: Hero(
                            tag: '인기순-$index',
                            child: Container(
                                width: 130,
                                color: Colors.grey,
                                child: Image.network(
                                  'https://picsum.photos/400/500',
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
