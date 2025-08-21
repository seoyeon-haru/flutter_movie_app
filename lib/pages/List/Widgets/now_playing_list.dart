import 'package:flutter/material.dart';

class NowPlayingList extends StatelessWidget {
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
              return Container(
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
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
