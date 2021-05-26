import 'package:dartz/dartz.dart';
import 'package:usaid_project/core/error/failures.dart';

class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String str) {
    try {
      final integer = int.parse(str);
      if (integer < 0) throw FormatException();
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {}

String getTimeByString(String s) {
  DateTime datetime = DateTime.parse(s);
  return "${datetime.day}/${datetime.month}/${datetime.year}";
}
