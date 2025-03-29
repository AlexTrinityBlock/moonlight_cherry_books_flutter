import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_card.dart';

// 歷史類書籍模擬數據
List<Book> historyBooks = [
  Book(
    id: 'his1',
    title: '人類簡史',
    author: '尤瓦爾·赫拉利',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'his2',
    title: '史記',
    author: '司馬遷',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'his3',
    title: '第二次世界大戰史',
    author: '溫斯頓·邱吉爾',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'his4',
    title: '資治通鑑',
    author: '司馬光',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
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
            itemCount: historyBooks.length,
            itemBuilder: (context, index) {
              final book = historyBooks[index];
              
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