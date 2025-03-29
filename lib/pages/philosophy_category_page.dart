import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

class PhilosophyCategoryPage extends StatelessWidget {
  const PhilosophyCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 使用與 PhilosophyCategoryHorizontalScrollable 相同的數據
    List<Book> philosophyBooks = [
      Book(
        id: 'phi1',
        title: '理想國',
        author: '柏拉圖',
        coverImageUrl: 'assets/cover_images/The_Republic.jpg',
        fullTextPath: 'assets/book_full_text/The_Republic.txt',
      ),
      Book(
        id: 'phi2',
        title: '手冊',
        author: '愛比克泰德',
        coverImageUrl: 'assets/cover_images/The_Enchiridion.jpg',
        fullTextPath: 'assets/book_full_text/The_Enchiridion.txt',
      ),
      Book(
        id: 'phi4',
        title: '沉思錄',
        author: '馬可·奧理略',
        coverImageUrl: 'assets/cover_images/Meditations.jpg',
        fullTextPath: 'assets/book_full_text/Meditations.txt',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('哲學類書籍'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: philosophyBooks.length,
        itemBuilder: (context, index) {
          final book = philosophyBooks[index];
          return BookCard(book: book);
        },
      ),
    );
  }
}