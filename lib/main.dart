import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Debug 배너 삭제
      debugShowCheckedModeBanner: false,

      // 공통적으로 전체 페이지 색상 지정
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF191919),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF191919),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
