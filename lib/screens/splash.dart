// 시작화면화면임 자동으로 넘어감 시작 화면 + 자동 이동

import 'package:flutter/material.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}
//화면의 시간  흐름/ 애니메이션 / 자동이동이 있으면 stateful
class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(_)=>HomePage()),
      );
      //현재화면 지우고 홈 페이지 화면 뛰우
    })
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "나의  건강 데이터",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//* initState() → 시작하자마자 실행
// * Future.delayed → 스플래시 2초 유지
// * Navigator.pushReplacement → 다음 화면 이동