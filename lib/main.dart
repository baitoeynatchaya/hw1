import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<String> quoteList = [
    'ไม่ต้องชอบอะไรเหมือนเราก็ได้ แค่ชอบเราก็พอ ',
    'โตมาถึงได้รู้ว่า โลกไม่ได้สวยเหมือนเรา',
    'เวรกรรมของเธอ ที่ได้เจอคนน่ารักแบบเรา',
    'เหงานิดหน่อย แต่กินข้าวอร่อยเหมือนเดิม',
    'วันนี้ไม่เห็นค่า วันหน้าก็ได้ เราว่างทุกวันแหละ',
    'ยามใดที่เราทุกข์ ชาไข่มุกคือพลัง'
  ];
  static const List<Color> colorList = [
    Colors.pinkAccent,
    Colors.deepOrangeAccent,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.amber,
    Colors.black
  ];
  var quote = quoteList[0];
  var color = colorList[0];

  void handleClickGo() {
    setState(() {
      var rand = Random();
      var randomIndex = rand.nextInt(quoteList.length);
      while(quote==quoteList){

      }
      quote = quoteList[randomIndex];

      var random = Random();
      var randomcolor = random.nextInt(colorList.length);
      color = colorList[randomcolor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FunnyQuote')),
      floatingActionButton: FloatingActionButton(
        onPressed: handleClickGo,
        child: const Center(
          child: Text(
            'Next Quote',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            quote,
            style: TextStyle(
              color: color,
              fontSize: 30,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
