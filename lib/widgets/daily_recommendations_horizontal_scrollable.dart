// 引入Flutter的Material庫  
import 'package:flutter/material.dart';
// 推薦書籍組件 - 顯示每日推薦的書籍
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
// 引入書籍數據模型
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
// 引入書籍卡片組件
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// Moke數據類 - 用於模擬書籍數據
List <Book> booksList = [
  // 定義一個書籍列表，包含每日推薦的書籍數據
  Book(
    id: '1',
    title: '書籍1',
    author: '作者1',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
    fullTextPath: 'assets/book_full_text/lit1.txt',
  ),
  
  Book(
    id: '2',
    title: '書籍2',
    author: '作者2',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),

  Book(
    id: '3',
    title: '書籍3',
    author: '作者3s',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
];

// 定義無狀態組件類，用於顯示每日推薦的書籍
class DailyRecommendationsHorizontalScrollable extends StatelessWidget {
  // 構造函數，接收可選的鍵參數
  const DailyRecommendationsHorizontalScrollable({super.key});

  @override
  // 重寫build方法，定義UI結構
  Widget build(BuildContext context) {
    
    // 使用Column縱向排列子組件
    return Column(
      // 設置子組件水平方向靠左對齊
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 推薦書單標題
        // 添加內邊距
        const Padding(
          // 在所有方向添加16像素的內邊距
          padding: EdgeInsets.all(16.0),
          // 文本組件
          child: Text(
            // 顯示的文本內容
            '本日推薦',
            // 設置文本樣式
            style: TextStyle(
              // 字體大小為20像素
              fontSize: 20,
              // 字體粗細為粗體
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
        // 推薦書單本體
        // 可自定義樣式的容器
        SizedBox(
          // 設置高度為200像素
          height: 200,
          // 使用ListView.builder創建滾動列表
          child: ListView.builder(
            // 設置水平滾動方向
            scrollDirection: Axis.horizontal,
            // 使用ClampingScrollPhysics防止嵌套滾動衝突
            physics: const ClampingScrollPhysics(),
            // 使用全局定義的書籍列表長度
            itemCount: booksList.length,
            // 定義如何構建每個列表項
            itemBuilder: (context, index) {
              // 獲取當前索引的書籍對象
              final book = booksList[index];
              
              // 返回一個固定寬度的容器，內含BookCard組件
              return SizedBox(
                // 設置容器寬度為150像素
                width: 170,
                // 使用BookCard組件顯示書籍
                child: BookCard(
                  book: book,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}