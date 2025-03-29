import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// 文學類書籍模擬數據
List<Book> literatureBooks = [
  Book(
    id: 'lit1',
    title: '百年孤獨',
    author: '加西亞·馬爾克斯',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'lit2',
    title: '傲慢與偏見',
    author: '簡·奧斯汀',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'lit3',
    title: '紅樓夢',
    author: '曹雪芹',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'lit4',
    title: '戰爭與和平',
    author: '列夫·托爾斯泰',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
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
          height: 200,
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