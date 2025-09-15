import 'package:hive/hive.dart';

part 'book_entity.g.dart';

@HiveType(typeId: 0) // No asterisks here
class BookEntity {
  @HiveField(0)
  final String bookId;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String author;
  @HiveField(3)
  final String description;
  @HiveField(4)
  final String imageUrl;
  @HiveField(5)
  final String category;
  @HiveField(6)
  final num rating;

  BookEntity({
    required this.bookId,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.category,
    required this.rating,
  });
}
