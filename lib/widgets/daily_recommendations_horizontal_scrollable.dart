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
              
              // 返回一個容器
              return Container(
                // 設置容器寬度為150像素
                width: 150,
                // 設置水平方向的外邊距為8像素
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                // 卡片組件，用於顯示書籍
                child: Card(
                  // 設置卡片陰影高度為4
                  elevation: 4,
                  // 使用Column縱向排列書籍信息組件
                  child: Column(
                    // 主軸居中對齊
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 書籍封面
                      Expanded(
                        flex: 6, // 佔據70%的空間
                        child: ClipRRect(
                          // 添加圓角裁剪，讓圖片更美觀
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                          child: Image.asset(
                            book.coverImageUrl, // 使用書籍的封面圖片URL
                            fit: BoxFit.cover, // 變更為cover以填滿整個區域
                            width: double.infinity, // 確保寬度填滿
                            height: double.infinity, // 確保高度填滿
                            errorBuilder: (context, error, stackTrace) {
                              // 如果圖片加載失敗，顯示佔位圖標
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
                      // 書籍標題
                      Expanded(
                        flex: 2, // 佔據20%的空間
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            book.title, // 顯示書籍標題
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis, // 文本過長時顯示省略號
                          ),
                        ),
                      ),
                      // 書籍作者
                      Expanded(
                        flex: 2, // 佔據10%的空間
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text(
                            book.author, // 顯示書籍作者
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
            },
          ),
        ),
      ],
    );
  }
}