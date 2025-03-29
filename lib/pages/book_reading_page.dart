// 引入 Flutter 的 Material 套件
import 'package:flutter/material.dart';
// 引入書籍數據模型
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
// AppBar
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';

class BookReadingPage extends StatelessWidget{
  // 書籍數據模型
  final Book book;
  // 構造函數，接收書籍參數
  const BookReadingPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(book.coverImageUrl), // 顯示書籍封面圖片
            const SizedBox(height: 20),
            Text(
              book.title, // 顯示書籍標題
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              book.author, // 顯示書籍作者
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}