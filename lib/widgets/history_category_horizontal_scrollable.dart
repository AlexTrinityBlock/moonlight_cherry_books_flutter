import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// 歷史類書籍模擬數據
List<Book> historyBooks = [
  Book(
    id: 'his1',
    title: '希羅多德的埃及記述',
    author: '希羅多德',
    coverImageUrl: 'assets/cover_images/An_Account_of_Egypt.jpg',
    fullTextPath: 'assets/book_full_text/An_Account_of_Egypt.txt',
  ),
  Book(
    id: 'his2',
    title: '伯羅奔尼撒戰爭史',
    author: '修昔底德',
    coverImageUrl: 'assets/cover_images/History_of_the_Peloponnesian_War.jpg',
    fullTextPath: 'assets/book_full_text/History_of_the_Peloponnesian_War.txt',
  ),
];

class HistoryCategoryHorizontalScrollable extends StatelessWidget {
  const HistoryCategoryHorizontalScrollable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 類別標題
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '歷史類',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),

        // 書籍列表
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: historyBooks.length,
            itemBuilder: (context, index) {
              final book = historyBooks[index];

              return SizedBox(width: 170, child: BookCard(book: book));
            },
          ),
        ),
      ],
    );
  }
}
