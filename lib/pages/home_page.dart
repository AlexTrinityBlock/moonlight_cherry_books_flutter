// 引入 Flutter 的 Material 套件
import 'package:flutter/material.dart';
// 頂端欄位
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';
// 水平拖曳元素
import 'package:moonlight_cherry_books_flutter/widgets/daily_recommendations_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/literature_category_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/history_category_horizontal_scrollable.dart';
import 'package:moonlight_cherry_books_flutter/widgets/philosophy_category_horizontal_scrollable.dart';
// 不同頁面導航
import 'package:moonlight_cherry_books_flutter/pages/library_page.dart';

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
          DailyRecommendationsHorizontalScrollable(),
          // 文學類書籍區塊
          LiteratureCategoryHorizontalScrollable(),
          // 歷史類書籍區塊
          HistoryCategoryHorizontalScrollable(),
          // 哲學類書籍區塊
          PhilosophyCategoryHorizontalScrollable(),
        ],
      ),
      // 下方導航欄位
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // 預設選中的項目索引為 0，即 HomePage
        items: const [ // 定義 BottomNavigationBar 的按鈕項目列表
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // 第一個按鈕使用主頁圖示
            label: 'HomePage', // 第一個按鈕的標籤是 'HomePage'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books), // 第二個按鈕使用書籍圖示
            label: 'LibraryPage', // 第二個按鈕的標籤是 'LibraryPage'
          ),
        ],
        onTap: (index) { // 當使用者點擊任一按鈕時呼叫此回調函式
          if (index == 1) { // 若點擊的是索引 1 的按鈕 (即 LibraryPage)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LibraryPage()), // 導航進入 LibraryPage 頁面
            );
          }
        },
      ),
    );
  }
}
