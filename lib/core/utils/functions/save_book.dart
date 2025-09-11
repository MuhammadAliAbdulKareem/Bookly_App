import 'package:hive_flutter/hive_flutter.dart';

import '../../../features/home/domain/entities/book_entity.dart';

Future<void> saveBooksData(List<BookEntity> books, String boxName) async {
  var box = Hive.box(boxName);
  await box.addAll(books);
}
