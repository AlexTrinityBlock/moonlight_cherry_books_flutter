import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';

/// 首頁組件 - 使用有狀態組件實現書籍展示功能
class LibraryPage extends StatefulWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  // 有狀態組件的狀態管理部分

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 使用自定義應用欄
      appBar: AppBar1(),
      // 使用滾動視圖包裝內容，支持垂直滾動
      body: ListView(
        children: [
          Placeholder(
            fallbackHeight: 200,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
