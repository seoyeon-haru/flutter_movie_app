import 'package:flutter/material.dart';

class MovieImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'movie',
      child: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey,
        ),
      ),
    );
  }
}
