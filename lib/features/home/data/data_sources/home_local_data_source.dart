import 'package:hive/hive.dart';

import '../../../../constants.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(Constants.kFeaturedBox);
    return box.values.toList();
  }

  List<BookEntity> fetchNewestBooks() {
    var box = Hive.box<BookEntity>(Constants.kNewestBox);
    return box.values.toList();
  }

  List<BookEntity> fetchSimilarBooks() {
    var box = Hive.box<BookEntity>(Constants.kSimilarBox);
    return box.values.toList();
  }
}
