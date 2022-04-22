// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    required this.country,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.totalTests,
    required this.testsPerOneMillion,
  });

  String? country;
  int? cases;
  int?todayCases;
  int? deaths;
  int? todayDeaths;
  int? recovered;
  int? active;
  int? critical;
  int? casesPerOneMillion;
  int? deathsPerOneMillion;
  int? totalTests;
  int? testsPerOneMillion;

  factory News.fromJson(Map<String, dynamic> json) => News(
    country: json["country"],
    cases: json["cases"],
    todayCases: json["todayCases"],
    deaths: json["deaths"],
    todayDeaths: json["todayDeaths"],
    recovered: json["recovered"],
    active: json["active"],
    critical: json["critical"],
    casesPerOneMillion: json["casesPerOneMillion"],
    deathsPerOneMillion: json["deathsPerOneMillion"],
    totalTests: json["totalTests"],
    testsPerOneMillion: json["testsPerOneMillion"],
  );

  Map<String, dynamic> toJson() => {
    "country": country,
    "cases": cases,
    "todayCases": todayCases,
    "deaths": deaths,
    "todayDeaths": todayDeaths,
    "recovered": recovered,
    "active": active,
    "critical": critical,
    "casesPerOneMillion": casesPerOneMillion,
    "deathsPerOneMillion": deathsPerOneMillion,
    "totalTests": totalTests,
    "testsPerOneMillion": testsPerOneMillion,
  };

}
class NewsContent {
  List<News> newsarticle;

  NewsContent({required this.newsarticle});

  factory NewsContent.fromjson(List parsedjson){
    List<News> newsarticle = <News>[];

    newsarticle = parsedjson.map((e) => News.fromJson(e)).toList();

    return NewsContent(newsarticle: newsarticle);
  }
}
