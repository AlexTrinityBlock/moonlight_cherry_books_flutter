import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';

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
      body: SingleChildScrollView(
        child: Column(
          // 設置列中的內容左對齊
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 熱門書籍區塊標題
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '本日推薦',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 熱門書籍橫向滾動列表
            SizedBox(
              // 設置固定高度
              height: 200,
              child: ListView.builder(
                // 設置水平滾動方向
                scrollDirection: Axis.horizontal,
                // 示例數據：顯示5本書
                itemCount: 5, // 熱門書籍數量
                // 構建每個書籍項目
                itemBuilder: (context, index) {
                  return Container(
                    // 設置每本書的寬度
                    width: 140,
                    // 添加水平間距
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      // 添加陰影效果
                      elevation: 4,
                      child: Center(
                        // 示例：顯示書籍編號
                        child: Text('Book ${index + 1}'),
                      ),
                    ),
                  );
                },
              ),
            ),
            // 書籍分類橫幅（待實現）
            
            // 書籍分類區塊（待實現）
            // 兩列書籍展示（待實現）
            
          ],
        ),
      ),
    );
  }
}
