import 'package:flutter/material.dart';

class TrendingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
        )
      ],
    );
  }
}
