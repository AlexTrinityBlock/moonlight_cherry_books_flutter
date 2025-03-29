import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

class LiteratureCategoryPage extends StatelessWidget {
  const LiteratureCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用與 LiteratureCategoryHorizontalScrollable 相同的數據
    List<Book> literatureBooks = [
      Book(
        id: 'lit2',
        title: '傲慢與偏見',
        author: '簡·奧斯汀',
        coverImageUrl: 'assets/cover_images/Pride_and_Prejudice.jpg',
        fullTextPath: 'assets/book_full_text/Pride_and_Prejudice.txt',
      ),
      Book(
        id: 'lit3',
        title: '麥琪的禮物',
        author: '歐·亨利',
        coverImageUrl: 'assets/cover_images/The_Gift_of_the_Magi.jpg',
        fullTextPath: 'assets/book_full_text/The_Gift_of_the_Magi.txt',
      ),
      Book(
        id: 'lit4',
        title: '洩密的心',
        author: '愛倫·坡',
        coverImageUrl: 'assets/cover_images/The_Tell_Tale_Heart.jpg',
        fullTextPath: 'assets/book_full_text/The_Tell_Tale_Heart.txt',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('文學類書籍'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: literatureBooks.length,
        itemBuilder: (context, index) {
          final book = literatureBooks[index];
          return BookCard(book: book);
        },
      ),
    );
  }
}