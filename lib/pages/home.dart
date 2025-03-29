import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';
import 'package:moonlight_cherry_books_flutter/widgets/daily_recommendations.dart';

/// 首頁組件 - 使用有狀態組件實現書籍展示功能
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 有狀態組件的狀態管理部分

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 使用自定義應用欄
      appBar: AppBar1(),
      // 使用滾動視圖包裝內容，支持垂直滾動
      body: ListView(
        children: [
          // 熱門書籍區塊標題
          DailyRecommendations(),
          // 書籍分類橫幅（待實現）
          
          // 書籍分類區塊（待實現）
          // 兩列書籍展示（待實現）
          
        ],
      ),
    );
  }
}
