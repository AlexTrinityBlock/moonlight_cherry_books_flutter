// 引入 Flutter 的 Material 套件
import 'package:flutter/material.dart';
// 水平拖曳元素
import 'package:moonlight_cherry_books_flutter/widgets/daily_recommendations_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/literature_category_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/history_category_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/philosophy_category_horizontal_scrollable.dart';
// 引入Hero
import 'package:moonlight_cherry_books_flutter/widgets/recommendations_page_hero.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // 設置背景顏色
      // color: const Color.fromARGB(100, 130, 80, 150), // 淺灰色背景
      child: ListView(
        children: [
          RecommendationsPageHero(), // 頂部橫幅圖片
          DailyRecommendationsHorizontalScrollable(), // 熱門書籍區塊
          LiteratureCategoryHorizontalScrollable(), // 文學類書籍區塊
          HistoryCategoryHorizontalScrollable(), // 歷史類書籍區塊
          PhilosophyCategoryHorizontalScrollable(), // 哲學類書籍區塊
        ],
      ),
    );
  }
}
