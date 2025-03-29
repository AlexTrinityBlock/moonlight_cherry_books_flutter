import 'package:flutter/material.dart';
import 'package:moonlight_cherry_books_flutter/widgets/book_category_card.dart';

List<BookCategoryCard> bookCategoryCards = [
  BookCategoryCard(
    bookCategoryName: '文學',
    bookCategoryIcon: Icons.menu_book,
    bookCategoryColor: Colors.white,
    // bookCategoryColor: Colors.pink.shade50,
  ),
  BookCategoryCard(
    bookCategoryName: '哲學',
    bookCategoryIcon: Icons.auto_stories,
    bookCategoryColor: Colors.white,
    // bookCategoryColor: Colors.blue.shade50,
  ),
  BookCategoryCard(
    bookCategoryName: '小說',
    bookCategoryIcon: Icons.bookmark,
    bookCategoryColor: Colors.white,
    // bookCategoryColor: Colors.green.shade50,
  ),
];

/// 首頁組件 - 使用有狀態組件實現書籍展示功能
class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});
  // 兩排書籍類別卡片
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 8.0),
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      children: bookCategoryCards,
    );
  }
}
