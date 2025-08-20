import 'package:flutter/material.dart';

class UpcomingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [Text('개봉 예정')],
        ),
        SizedBox(height: 10),
        SizedBox(
          // 가로 스크롤 시 높이 지정 필요
          height: 180,
          child: ListView.separated(
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
