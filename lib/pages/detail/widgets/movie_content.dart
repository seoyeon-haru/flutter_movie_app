import 'package:flutter/material.dart';

class MovieContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Moana 2',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text('2024-11-27'),
            ],
          ),
          Text('The ocean is calling them back.'),
          Text('100분'),
          SizedBox(height: 5),
          Divider(thickness: 1),
          Row(
            children: [
              genre('Animation'),
              SizedBox(width: 5),
              genre('Adventure'),
              SizedBox(width: 5),
              genre('Family'),
              SizedBox(width: 5),
              genre('Comedy'),
            ],
          ),
          Divider(thickness: 1),
          Text(
              'After receiving an unexpeced call from her wayfinding ancestors, Moana journeys alingside Maui and a new crew to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she`s ever faced.'),
          Divider(thickness: 1),
          SizedBox(height: 10),
          Text(
            '흥행정보',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                rate('6.949', '평점'),
                SizedBox(width: 10),
                rate('331', '평점투표수'),
                SizedBox(width: 10),
                rate('5466.535', '인기점수'),
                SizedBox(width: 10),
                rate('150000000', '예산'),
                SizedBox(width: 10),
                rate('423586580', '수익'),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 70,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                showCompany(),
                SizedBox(width: 10),
                showCompany(),
                SizedBox(width: 10),
                showCompany(),
                SizedBox(width: 10),
                showCompany(),
                SizedBox(width: 10),
                showCompany(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container showCompany() {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
      ),
    );
  }

  Container rate(String num, String content) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(num), Text(content)],
      ),
    );
  }

  Container genre(String des) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey, width: 1)),
      child: Center(
        child: Text(
          des,
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
