import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/home/widgets/home_header_sheet.dart';
import 'package:flutter_movie_app/pages/home/widgets/home_text_field.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeHeaderSheet(),
          HomeTextField(),
        ],
      ),
    );
  }
}
