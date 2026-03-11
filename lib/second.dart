import 'package:flutter/material.dart';

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
      home: const SecondPage(),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300),
            TextField(
              decoration: InputDecoration(
                labelText: "이름을 입력해주세요.",
                border: OutlineInputBorder(),
              ),
            ),
            // onPressed버튼하고 온프레스드 (),child에는 들어갈 텍스트 입력
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}