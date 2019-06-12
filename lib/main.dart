import 'package:flutter/material.dart';
import 'package:news_medium/NoticeList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new NoticeList(),
      // routes: <String, WidgetBuilder>{
      //   '/screen1': (BuildContext context) => new Screen1(),
      //   '/screen2': (BuildContext context) => new Screen2(),
      // },
      debugShowCheckedModeBanner: false,
    );
  }
}
