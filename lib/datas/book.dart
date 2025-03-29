// 每日推薦書資料類型
class Book {
  String id;
  String title;
  String author;
  String coverImageUrl;
  String? fullTextPath;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImageUrl,
    this.fullTextPath,
  });
}