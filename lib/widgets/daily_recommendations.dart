import 'package:flutter/material.dart'; // 導入Flutter材料設計庫，提供基本UI組件
import 'package:moonlight_cherry_books_flutter/data/daily_recommendation_book.dart';

// Moke數據類 - 用於模擬書籍數據
List <DailyRecommendationBook> books_list = [
  // 定義一個書籍列表，包含每日推薦的書籍數據
  DailyRecommendationBook(
    id: '1',
    title: '書籍1',
    author: '作者1',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  
  DailyRecommendationBook(
    id: '2',
    title: '書籍2',
    author: '作者2',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),

  DailyRecommendationBook(
    id: '3',
    title: '書籍3',
    author: '作者3s',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
];

class DailyRecommendations extends StatelessWidget {
  // 定義無狀態組件類，用於顯示每日推薦的書籍
  const DailyRecommendations({Key? key}) : super(key: key); // 構造函數，接收可選的鍵參數

  @override
  Widget build(BuildContext context) {
    
    // 重寫build方法，定義UI結構
    return Column(
      // 使用Column縱向排列子組件
      crossAxisAlignment: CrossAxisAlignment.start,
      // 設置子組件水平方向靠左對齊
      children: [
        
        // 推薦書單標題
        const Padding(
          // 添加內邊距
          padding: EdgeInsets.all(16.0),
          // 在所有方向添加16像素的內邊距
          child: Text(
            // 文本組件
            '本日推薦',
            // 顯示的文本內容
            style: TextStyle(
              // 設置文本樣式
              fontSize: 20,
              // 字體大小為20像素
              fontWeight: FontWeight.bold,
              // 字體粗細為粗體
            ),
          ),
        ),
        
        // 推薦書單本體
        SizedBox(
          // 固定尺寸的容器
          height: 200,
          // 設置高度為200像素
          child: ListView.builder(
            // 使用ListView.builder創建滾動列表
            scrollDirection: Axis.horizontal,
            // 設置水平滾動方向
            physics: const ClampingScrollPhysics(),
            // 使用ClampingScrollPhysics防止嵌套滾動衝突
            itemCount: books_list.length, // 使用全局定義的書籍列表長度
            itemBuilder: (context, index) {
              // 定義如何構建每個列表項
              final book = books_list[index]; // 獲取當前索引的書籍對象
              // 打印書籍對象以便於調試
              print(book.id);
              return Container(
                // 返回一個容器
                width: 150,
                // 設置容器寬度為150像素
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                // 設置水平方向的外邊距為8像素
                child: Card(
                  // 卡片組件，用於顯示書籍
                  elevation: 4,
                  // 設置卡片陰影高度為4
                  child: Column(
                    // 使用Column縱向排列書籍信息組件
                    mainAxisAlignment: MainAxisAlignment.center,
                    // 主軸居中對齊
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