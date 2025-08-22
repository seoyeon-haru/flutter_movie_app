import 'dart:convert';

import 'package:flutter_movie_app/data/dto/movie_reponse_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieResponseDto: fromJson test', () {
    const sampleJsonString = """
    {
       "adult": false,
       "backdrop_path": "/538U9snNc2fpnOmYXAPUh3zn31H.jpg",
       "genre_ids": [
         28,
         12,
         53
       ],
       "id": 575265,
       "original_language": "en",
       "original_title": "Mission: Impossible - The Final Reckoning",
       "overview": "디지털상의 모든 정보를 통제할 수 있는 사상 초유의 무기로 인해 전 세계 국가와 조직의 기능이 마비되고, 인류 전체가 위협받는 절체절명의 위기가 찾아온다. 이를 막을 수 있는 건 오직 존재 자체가 기밀인 에단 헌트와 그가 소속된 IMF뿐이다. 무기를 무력화하는 데 반드시 필요한 키를 손에 쥔 에단 헌트. 오랜 동료 루터와 벤지, 그리고 새로운 팀원이 된 그레이스, 파리, 드가와 함께 지금껏 경험했던 그 어떤 상대보다도 강력한 적에 맞서 모두의 운명을 건 불가능한 미션에 뛰어든다.",
       "popularity": 788.7078,
       "poster_path": "/5Zxdorl5TharlI9S47YxoKzGCsi.jpg",
       "release_date": "2025-05-17",
       "title": "미션 임파서블: 파이널 레코닝",
       "video": false,
       "vote_average": 7.23,
       "vote_count": 1240
    }
""";

    final map = jsonDecode(sampleJsonString);
    final movieResponseDto = MovieResponseDto.fromJson(map);
    expect(movieResponseDto.title, "미션 임파서블: 파이널 레코닝");
    expect(movieResponseDto.voteCount, 1240);
    expect(movieResponseDto.originalLanguage, 'en');
  });
}
