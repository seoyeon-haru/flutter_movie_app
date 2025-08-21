import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_content.dart';
import 'package:flutter_movie_app/pages/detail/widgets/movie_image.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Column(
            children: [
              MovieImage(),
              SizedBox(height: 10),
              MovieContent(),
            ],
          ),
        ],
      ),
    );
  }
}
