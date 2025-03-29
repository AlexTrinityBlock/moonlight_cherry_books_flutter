import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';
import 'package:moonlight_cherry_books_flutter/widgets/daily_recommendations.dart';
import 'package:moonlight_cherry_books_flutter/widgets/literature_category.dart';
import 'package:moonlight_cherry_books_flutter/widgets/history_category.dart';
import 'package:moonlight_cherry_books_flutter/widgets/philosophy_category.dart';

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
          // 文學類書籍區塊
          LiteratureCategory(),
          // 歷史類書籍區塊
          HistoryCategory(),
          // 哲學類書籍區塊
          PhilosophyCategory(),
        ],
      ),
    );
  }
}
