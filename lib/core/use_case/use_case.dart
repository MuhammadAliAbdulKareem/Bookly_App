import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> execute([Param? param]);
}

class NoParams {}
