import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {
  MovieImage({required this.heroTag});
  final String heroTag;
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
              'https://picsum.photos/400/500',
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
