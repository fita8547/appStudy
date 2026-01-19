import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget{
  final Map item;

  const DetailPage({super.key,required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail")),

      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              item['title'],
              style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(item['subtitle'],style: const TextStyle(fontSize:16 )),
          ],
        ),

      ),
    );
  }
}