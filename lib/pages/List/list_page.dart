import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/List/Widgets/bottom_my_tab.dart';
import 'package:flutter_movie_app/pages/List/Widgets/popular_list.dart';
import 'package:flutter_movie_app/pages/List/Widgets/now_playing_list.dart';
import 'package:flutter_movie_app/pages/List/Widgets/top_rated_list.dart';
import 'package:flutter_movie_app/pages/List/Widgets/trending_list.dart';
import 'package:flutter_movie_app/pages/List/Widgets/upcoming_list.dart';

class ListPage extends StatelessWidget {
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
          TrendingList(),
          NowPlayingList(),
          PopularList(),
          TopRatedList(),
          UpcomingList(),
          BottomMyTab(),
        ],
      ),
    );
  }
}
