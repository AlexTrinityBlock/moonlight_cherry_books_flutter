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
  
  @override
  void initState() {
    super.initState();
    // 使用 WidgetsBinding 確保在第一個 frame 繪製完成後顯示對話框
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showWelcomeDialog();
    });
  }
  
  // 顯示歡迎對話框
  void _showWelcomeDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('歡迎來到 Moonlight Cherry Books 書城'),
          content: const Text('這邊收藏的書籍都是版權已經進入 Public Domain 的書籍，憂盡情享受，希望您能享受閱讀的樂趣！'),
          actions: <Widget>[
            SizedBox(
              height: 16.0,
            ),
            // 使用Container包裹按鈕並設置寬度為100%來實現置中
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.purple[700],
                  // foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 45), // 設置最小寬度為無限，高度為45
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  '確定',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
          // 設置內部內容的邊距，讓按鈕和內容有更好的間隔
          contentPadding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
          // 設置按鈕區域的邊距，調整按鈕位置
          actionsPadding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
        );
      },
    );
  }
  
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
        backgroundColor: Color.fromARGB(255, 186, 232, 232), // 導航欄背景顏色
        iconSize: 28, // 增加圖標大小
        selectedFontSize: 14, // 選中項目的字體大小
        unselectedFontSize: 12, // 未選中項目的字體大小
        selectedLabelStyle: const TextStyle(height: 2.0), // 標籤行高
        unselectedLabelStyle: const TextStyle(height: 2.0), // 標籤行高
        type: BottomNavigationBarType.fixed,
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
