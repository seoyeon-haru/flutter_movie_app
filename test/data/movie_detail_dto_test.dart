import 'dart:convert';

import 'package:flutter_movie_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('MovieDetailDto: fromJson test', () {
    const sampleJsonString = """
    {
      "adult": false,
      "backdrop_path": "/538U9snNc2fpnOmYXAPUh3zn31H.jpg",
      "belongs_to_collection": {
        "id": 87359,
        "name": "미션 임파서블 시리즈",
        "poster_path": "/jPrAjeK4APOhPSrHrLqSmXF2Z8a.jpg",
        "backdrop_path": "/mroWh717g0Ah2c0rrPGW6f3EWMM.jpg"
      },
      "budget": 400000000,
      "genres": [
        {
          "id": 28,
          "name": "액션"
        },
        {
          "id": 12,
          "name": "모험"
        },
        {
          "id": 53,
          "name": "스릴러"
        }
      ],
      "homepage": "",
      "id": 575265,
      "imdb_id": "tt9603208",
      "origin_country": [
        "US"
      ],
      "original_language": "en",
      "original_title": "Mission: Impossible - The Final Reckoning",
      "overview": "디지털상의 모든 정보를 통제할 수 있는 사상 초유의 무기로 인해 전 세계 국가와 조직의 기능이 마비되고, 인류 전체가 위협받는 절체절명의 위기가 찾아온다. 이를 막을 수 있는 건 오직 존재 자체가 기밀인 에단 헌트와 그가 소속된 IMF뿐이다. 무기를 무력화하는 데 반드시 필요한 키를 손에 쥔 에단 헌트. 오랜 동료 루터와 벤지, 그리고 새로운 팀원이 된 그레이스, 파리, 드가와 함께 지금껏 경험했던 그 어떤 상대보다도 강력한 적에 맞서 모두의 운명을 건 불가능한 미션에 뛰어든다.",
      "popularity": 788.7078,
      "poster_path": "/5Zxdorl5TharlI9S47YxoKzGCsi.jpg",
      "production_companies": [
        {
          "id": 4,
          "logo_path": "/gz66EfNoYPqHTYI4q9UEN4CbHRc.png",
          "name": "Paramount Pictures",
          "origin_country": "US"
        },
        {
          "id": 82819,
          "logo_path": "/gXfFl9pRPaoaq14jybEn1pHeldr.png",
          "name": "Skydance Media",
          "origin_country": "US"
        },
        {
          "id": 21777,
          "logo_path": null,
          "name": "TC Productions",
          "origin_country": "US"
        }
      ],
      "production_countries": [
        {
          "iso_3166_1": "US",
          "name": "United States of America"
        }
      ],
      "release_date": "2025-05-17",
      "revenue": 596513515,
      "runtime": 170,
      "spoken_languages": [
        {
          "english_name": "English",
          "iso_639_1": "en",
          "name": "English"
        },
        {
          "english_name": "French",
          "iso_639_1": "fr",
          "name": "Français"
        },
        {
          "english_name": "Inuktitut",
          "iso_639_1": "iu",
          "name": ""
        },
        {
          "english_name": "Russian",
          "iso_639_1": "ru",
          "name": "Pусский"
        }
      ],
      "status": "Released",
      "tagline": "모든 선택이 향하는 단 하나의 미션",
      "title": "미션 임파서블: 파이널 레코닝",
      "video": false,
      "vote_average": 7.227,
      "vote_count": 1238
    }
""";

    final map = jsonDecode(sampleJsonString);
    final movieDetailDto = MovieDetailDto.fromJson(map);
    expect(movieDetailDto.originalLanguage, "en");
    expect(movieDetailDto.title, "미션 임파서블: 파이널 레코닝");
    expect(movieDetailDto.voteCount, 1238);
  });
}
