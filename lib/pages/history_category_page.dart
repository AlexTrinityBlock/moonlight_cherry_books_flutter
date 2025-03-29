import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

class HistoryCategoryPage extends StatelessWidget {
  const HistoryCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用與 HistoryCategoryHorizontalScrollable 相同的數據
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

    return Scaffold(
      appBar: AppBar(
        title: const Text('歷史類書籍'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: historyBooks.length,
        itemBuilder: (context, index) {
          final book = historyBooks[index];
          return BookCard(book: book);
        },
      ),
    );
  }
}