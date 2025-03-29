import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';

/// 書籍卡片組件 - 顯示單本書籍的封面、標題和作者
class BookCard extends StatelessWidget {
  // 書籍數據模型
  final Book book;
  
  // 構造函數，接收必要的書籍參數和可選的寬度參數
  const BookCard({
    Key? key, 
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 返回一個帶有外邊距的容器
    return Container(
      // 設置水平方向的外邊距
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      // 使用卡片組件作為子元素
      child: Card(
        // 設置卡片陰影高度
        elevation: 4,
        // 使用Column縱向排列書籍信息組件
        child: Column(
          // 主軸居中對齊
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 書籍封面區域
            Expanded(
              // 佔據70%的空間
              flex: 6,
              child: ClipRRect(
                // 添加圓角裁剪，讓圖片更美觀
                borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                child: Image.asset(
                  // 使用書籍的封面圖片URL
                  book.coverImageUrl,
                  // 變更為cover以填滿整個區域
                  fit: BoxFit.cover,
                  // 確保寬度填滿
                  width: double.infinity,
                  // 確保高度填滿
                  height: double.infinity,
                  // 圖片加載失敗時的處理
                  errorBuilder: (context, error, stackTrace) {
                    // 顯示佔位圖標
                    return Container(
                      color: Colors.grey[200],
                      child: const Center(
                        child: Icon(Icons.book, size: 60, color: Colors.grey),
                      ),
                    );
                  },
                ),
              ),
            ),
            // 書籍標題區域
            Expanded(
              // 佔據20%的空間
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  // 顯示書籍標題
                  book.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  // 文本過長時顯示省略號
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // 書籍作者區域
            Expanded(
              // 佔據10%的空間
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                child: Text(
                  // 顯示書籍作者
                  book.author,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}