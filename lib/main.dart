import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/pages/home_page.dart';

// 主函數
void main() {
  // 執行應用程式
  runApp(const MainApp());
}

// AboutMe 類別
class MainApp extends StatelessWidget {
  // 建構子
  const MainApp({super.key});
  // Root widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moon Light Cherry Books',
      theme: ThemeData(
        // 主題色彩
        // 會影響AppBar
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xbae8e8)),
      ),
      // 導入首頁
      home: HomePage());
  }
}