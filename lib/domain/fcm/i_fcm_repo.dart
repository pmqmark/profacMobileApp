import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';

abstract class IFcmRepo {
  Future updateFCMToken();
}