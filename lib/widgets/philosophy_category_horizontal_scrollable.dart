import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// 哲學類書籍模擬數據
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

class PhilosophyCategoryHorizontalScrollable extends StatelessWidget {
  const PhilosophyCategoryHorizontalScrollable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 類別標題
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '哲學類',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        
        // 書籍列表
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: philosophyBooks.length,
            itemBuilder: (context, index) {
              final book = philosophyBooks[index];
              
              return SizedBox(
                width: 170,
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