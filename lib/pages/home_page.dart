// 引入 Flutter 的 Material 套件
import 'package:flutter/material.dart';
// 頂端欄位
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';
// 推薦頁面
import 'package:moonlight_cherry_books_flutter/pages/recommendations_page.dart';
// 圖書館頁面
import 'package:moonlight_cherry_books_flutter/pages/library_page.dart';

/// 首頁組件 - 使用有狀態組件實現書籍展示功能
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 選定的頁面，預設為0
  int _selectedIndex = 0;
  
  // 頁面列表
  final List<Widget> _pages = const [
    RecommendationsPage(), // 推薦頁面
    LibraryPage(), // 圖書館頁面
  ];
  
  // 當物件被點擊時
  void _onItemTapped(int index) {
    // 更新選定的頁面索引
    setState(() {
      _selectedIndex = index;
    });
  }
  
  // 有狀態組件的狀態管理部分

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(), // 使用自定義應用欄
      body: _pages[_selectedIndex], // 使用獨立切分的下方導航欄元件
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: '推薦',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '圖書館',
          ),
        ],
        currentIndex: _selectedIndex, // 當前選定的索引
        onTap: _onItemTapped, // 點擊事件處理函數
      ),
    );
  }
}
