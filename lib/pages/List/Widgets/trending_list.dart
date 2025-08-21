
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_page.dart';

class TrendingList extends StatelessWidget {
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
              Navigator.push(context, MaterialPageRoute(builder:(context) {
                return DetailPage();
              },));
            },
            child: Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
