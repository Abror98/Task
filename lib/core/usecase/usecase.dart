import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:task/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseNew<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}
