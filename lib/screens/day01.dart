//text위젯은 애플리케이션 내의 적용된 텍스트를 연속적으로 표현


//MainApp`root`는 `method`에 전달되는 위젯이므로 루트 위젯 입니다 .
// 이 위젯 안에는 `method`라는 또 다른 위젯을 반환하는 메서드가 runApp있습니다 .
// 기본적으로 Flutter 앱은 위젯 트리라고 하는 트리 구조를 구성하는 여러 위젯의 조합입니다
// buildMaterialApp
//Flutter 개발자로서 여러분의 역할은 SDK의 위젯들을 조합하여
// UI를 표시하는 더 크고 사용자 정의 가능한 위젯을 만드는 것입니다.
// 현제 개발되고 배운 위젯트리 MainApp->MatialApp
//->Scaffold->Center-> Text
import 'package:flutter/material.dart'; // Imports Flutter.

class Day01App extends StatelessWidget {
  const Day01App({super.key});  // 클래스랑 동일하게


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}