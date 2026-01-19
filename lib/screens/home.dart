import 'dart:convert'; //json해석
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //assets 불러오기용
import 'detail.dart';  //상세 페이지

class HomePage extends StatefulWidget{
  const  HomePage ({super.key});

  @override
  State<StatefulWidget> createState() =>_HomePageState();
}

class _HomePageState extends State<HomePage> {
  List items=[]; //json에 담을 리스트
  @override
  void initState() {
    super.initState();
    loadJson(); //화면 불러올때 json데이터 받아오기
  }
  //assets에  있는 json파일 읽가
  Future<void> loadJson() async {
    final String jsonString =
        await rootBundle.loadString('lib/data/sample.json');
    final data = json.decode(jsonString); //문자열을 json으로 변환

    setState(() {
      items =data;// 화면 다시 그리
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: items.isEmpty
        ? const Center(child: CircularProgressIndicator())
        // json파일이 안나오면 계속 로딩 표시

        :ListView.builder(
          itemCount:items.length,//리스트 개수
          itemBuilder: (context, index) {
            final item=items[index];

            return ListTile(
              title: Text(item['title']),
              subtitle: Text(item['subtitle']),
              onTap: () {
              //리스트 클릭시 상세페이지  이동
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(_)=>DetailPage(item:item),
                  ),
                );
            },
          );
        },
      ),
    );
  }
}