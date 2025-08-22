import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';

class TrendingList extends StatelessWidget {
  TrendingList({required this.heroTag});
  final String heroTag;
  @override
  Widget build(BuildContext context) {
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
                  return DetailPage(heroTag: '가장인기있는');
                },
              ));
            },
            child: Hero(
              tag: '가장인기있는',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  color: Colors.grey,
                  child: Image.network(
                    'https://picsum.photos/400/500',
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
