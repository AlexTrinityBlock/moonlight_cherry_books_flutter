import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/pages/literature_category_page.dart';
import 'package:moonlight_cherry_books_flutter/pages/philosophy_category_page.dart';
import 'package:moonlight_cherry_books_flutter/pages/history_category_page.dart';

/// 書籍卡片組件 - 顯示單本書籍的封面、標題和作者
class BookCategoryCard extends StatelessWidget {
  // 書籍數據模型
  final String bookCategoryName;
  final IconData bookCategoryIcon;
  final Color bookCategoryColor;
  final Widget bookCategoryPage;

  // 構造函數，接收必要的書籍參數和可選的寬度參數
  BookCategoryCard({
    super.key,
    required this.bookCategoryName,
    required this.bookCategoryIcon,
    required this.bookCategoryColor,
    required this.bookCategoryPage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => this.bookCategoryPage,
          ),
        );
      },
      child: Container(
        // 設置水平方向的外邊距
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        // 使用 Card 並設定背景色為 bookCategoryColor
        child: Card(
          elevation: 4,
          color: bookCategoryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 書籍封面區域（使用 ClipRRect 圓角裁剪）
              Expanded(
                flex: 6,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(4),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 使用 bookCategoryIcon 作為圖示
                        Icon(bookCategoryIcon, size: 40),
                        const SizedBox(height: 8),
                        // 顯示書籍類別名稱
                        Text(bookCategoryName),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
