import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/datas/book.dart';

// 哲學類書籍模擬數據
List<Book> philosophyBooks = [
  Book(
    id: 'phi1',
    title: '存在與虛無',
    author: '讓-保羅·薩特',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'phi2',
    title: '論語',
    author: '孔子',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'phi3',
    title: '純粹理性批判',
    author: '伊曼努爾·康德',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
  ),
  Book(
    id: 'phi4',
    title: '道德經',
    author: '老子',
    coverImageUrl: 'assets/images/moke_book_icon.jpg',
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
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            itemCount: philosophyBooks.length,
            itemBuilder: (context, index) {
              final book = philosophyBooks[index];
              
              return Container(
                width: 150,
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Card(
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 書籍封面
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
                          child: Image.asset(
                            book.coverImageUrl,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: Colors.grey[200],
                                child: const Center(
                                  child: Icon(Icons.book, size: 60, color: Colors.grey),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      // 書籍標題
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            book.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      // 書籍作者
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                          child: Text(
                            book.author,
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}