import 'package:dartz/dartz.dart';
import 'package:profac/domain/failure/failure.dart';
import 'package:profac/domain/settings/help_and_support/model/help_and_support_model.dart';

abstract class IHelpAndSupportRepo {
  Future<Either<MainFailure, List<HelpTopicModel>>> getHelpAndSupport();
}
