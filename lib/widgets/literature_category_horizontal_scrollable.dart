import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// 文學類書籍模擬數據
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

class LiteratureCategoryHorizontalScrollable extends StatelessWidget {
  const LiteratureCategoryHorizontalScrollable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 類別標題
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            '文學類',
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
            itemCount: literatureBooks.length,
            itemBuilder: (context, index) {
              final book = literatureBooks[index];
              
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