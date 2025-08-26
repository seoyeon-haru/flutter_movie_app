import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  MovieImage({required this.heroTag, required this.posterPath});
  final String heroTag;
  String posterPath;
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: heroTag,
      child: Container(
          height: 500,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://image.tmdb.org/t/p/w500$posterPath',
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
