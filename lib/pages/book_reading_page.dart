// 引入 Flutter 的 Material 套件
import 'package:flutter/material.dart';
// 引入書籍數據模型
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
// AppBar
import 'package:moonlight_cherry_books_flutter/widgets/app_bar_1.dart';
// 引入用於讀取資源文件的套件
import 'package:flutter/services.dart' show rootBundle;

class BookReadingPage extends StatefulWidget {
  // 書籍數據模型
  final Book book;
  // 構造函數，接收書籍參數
  const BookReadingPage({super.key, required this.book});

  @override
  State<BookReadingPage> createState() => _BookReadingPageState();
}

class _BookReadingPageState extends State<BookReadingPage> {
  // 存儲書籍內容
  late Future<String> bookContent;

  @override
  void initState() {
    super.initState();
    // 初始化時加載書籍內容
    bookContent = getBookFulltext(widget.book);
  }
  
  // 取得書籍內容，改為異步方法
  Future<String> getBookFulltext(Book book) async {
    // 判斷書籍內容路徑是否存在
    if (book.fullTextPath != null) {
      try {
        // 讀取書籍內容，位置在 assets/book_full_text/
        return await rootBundle.loadString(book.fullTextPath!);
      } catch (e) {
        // 讀取失敗時返回錯誤信息
        return '無法讀取書籍內容：$e';
      }
    } else {
      // 如果不存在，返回空字串
      return '<本書尚未上傳>';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar1(),
      body: Center(
        child: ListView(
          children: [
            Image.asset(widget.book.coverImageUrl), // 顯示書籍封面圖片
            const SizedBox(height: 20),
            Center(
              child: Text(
                widget.book.title, // 顯示書籍標題
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                widget.book.author, // 顯示書籍作者
                style: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: FutureBuilder<String>(
                future: bookContent,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Text('錯誤：${snapshot.error}',
                        style: const TextStyle(color: Colors.red));
                  } else {
                    return Text(
                      snapshot.data ?? '<無內容>',
                      style: const TextStyle(fontSize: 16),
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
