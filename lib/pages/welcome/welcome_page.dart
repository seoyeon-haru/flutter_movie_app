import 'package:flutter/material.dart';
import 'package:flutter_movie_app/pages/home/home_page.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>

    /// SingleTickerProviderStateMixin 는 AnimationController 에 vsync(틱 제공자)를 넘기기 위해 사용
    with
        SingleTickerProviderStateMixin {
  /// Lottie 재생을 제어할 AnimationController
  late final AnimationController _controller;

  // 컨트롤러 생성
  /// vsync 로 현재 State 를 전달해 성능/자원 최적화
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();

    // 애니메이션 상태 변화 감지
    _controller.addStatusListener((status) {
      // 재생이 완료되면
      if (status == AnimationStatus.completed) {
        /// 현재 페이즈를 스택에서 pushReplacement 하여
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          /// HomePage 로 전환 => pushReplacement 는 뒤로가기시 웰컴으로 안 돌아옴
          builder: (context) => HomePage(),
        ));
      }
    });
  }

  @override
  // 메모리 소거
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: Lottie.asset('assets/Movie.json',
              // 재생/정지/진행률을 제어
              controller: _controller, 
              /// onLoaded 애니메이션 리소스가 메모리에 로드된 순간 콜백
              onLoaded: (composition) {
                // Lottie 길이를 컨트롤러에 동일하게 설정
            _controller.duration = composition.duration;
            // 처음부터 끝까지 1회 재생 시작
            _controller.forward();
          }),
        ),
      ),
    );
  }
}
