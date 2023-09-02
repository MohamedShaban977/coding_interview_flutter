import 'package:dartz/dartz.dart';

import '../../../core/error/exceptions.dart';
import '../../../core/error/failures.dart';
import '../../data/data_sources/training_series_data_source.dart';
import '../entities/training_series_entity.dart';



class TrainingSeriesRepository {
  final TrainingSeriesDataSource dataSource = TrainingSeriesDataSource();

  Future<Either<Failure, TrainingSeriesEntity>> getTrainingSeries() async {
    try {
      final res = await dataSource.getTrainingSeries();
      return res.trainingSeries.isNotEmpty ? Right(res)  : const Left(CacheFailure('Tne country is not found'));
    } on CacheException catch (_) {
      return const Left(CacheFailure('Not found  cached file'));
    }
  }

}