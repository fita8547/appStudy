import 'package:flutter/material.dart';
import 'second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'diary',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          //센터에서 패딩대신에 강제 삽입하는법(?)
          children: [
            const Text("운행을 엿볼시간이에요"),
            const SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>const SecondPage(),
                  ),
                );
                print("시작하기 버튼을 눌렸어요");
              },
              child: const Text("시작하기 >"),
              // onPressed버튼하고 온프레스드 (),child에는 들어갈 텍스트 입력
            ),
          ],
        ),
      ),
    );
  }
}