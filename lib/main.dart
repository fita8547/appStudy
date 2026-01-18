import 'package:flutter/material.dart';
import 'screens/splash.dart';  //우리가 만들시작화면 불러옴

void main(){
  runApp(const MyApp());
  //플루터 앱시작
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //오른쪽위 디버트표시 제거
      title:'기술 테스트용 앱',
      home: SplashPage(),//앲ㄹ행시 가장 먼저 보여줘야될내용
    );
  }
}
