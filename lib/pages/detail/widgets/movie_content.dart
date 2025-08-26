import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/detail/detail_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieContent extends ConsumerWidget {
  MovieContent(this.state);
  DetailState state;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  state.detailMovie?.title ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text('${state.detailMovie?.releaseDate ?? ''}'),
            ],
          ),
          Text(state.detailMovie?.tagline ?? ''),
          Text('${state.detailMovie?.runtime ?? 0}분'),
          SizedBox(height: 5),
          Divider(thickness: 1),
          SizedBox(
            height: 36,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: state.detailMovie?.genres.length ?? 0,
              separatorBuilder: (context, index) => SizedBox(width: 5),
              itemBuilder: (context, index) {
                final movie = state.detailMovie!.genres[index];
                final String label = (movie is String)
                    ? movie
                    : ((movie as dynamic).name ?? movie.toString());
                return genre(label);
              },
            ),
          ),
          Divider(thickness: 1),
          Text(state.detailMovie?.overview ?? ''),
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
                rate('${state.detailMovie?.voteAverage}', '평점'),
                SizedBox(width: 10),
                rate('${state.detailMovie?.voteCount}', '평점투표수'),
                SizedBox(width: 10),
                rate('${state.detailMovie?.popularity}', '인기점수'),
                SizedBox(width: 10),
                rate('${state.detailMovie?.budget}', '예산'),
                SizedBox(width: 10),
                rate('${state.detailMovie?.revenue}', '수익'),
              ],
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 70,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: state.detailMovie?.productionCompanies.length ?? 0,
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemBuilder: (context, index) {
                final logo = state.detailMovie?.productionCompanies[index];
                final String comLogo = (logo is String)
                    ? logo
                    : ((logo as dynamic).name ?? logo.toString());
                return showCompany(comLogo);
              },
            ),
          ),
        ],
      ),
    );
  }

  // 영화 제작사
  Container showCompany(String des) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
      ),
      child: Center(
        child: Text(
          des,
          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

// 영화 흥행정보
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

// 영화 장르
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
