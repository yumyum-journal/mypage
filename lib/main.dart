import 'package:flutter/material.dart';
import 'mypage.dart'; // 마이페이지 import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      home: MyPageScreen(), // 시작화면: 마이페이지
    );
  }
}
