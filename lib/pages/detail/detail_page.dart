import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_content.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_image.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.heroTag});
  final String heroTag;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/logo.png',
              height: 69,
              width: 69,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              MovieImage(heroTag: heroTag),
              SizedBox(height: 10),
              MovieContent(),
            ],
          ),
        ],
      ),
    );
  }
}
