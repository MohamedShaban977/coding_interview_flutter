import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../core/error/failures.dart';
import '../../domain/entities/training_series_entity.dart';
import '../../domain/repositories/training_series_repo.dart';

part 'training_series_event.dart';
part 'training_series_state.dart';

class TrainingSeriesBloc
    extends Bloc<TrainingSeriesEvent, TrainingSeriesState> {
  final TrainingSeriesRepository repository = TrainingSeriesRepository();

  TrainingSeriesBloc() : super(TrainingSeriesInitial()) {
    on<TrainingSeriesEvent>((event, emit) async {
      if (event is GetTrainingSeriesEvent) {
        await _getTrainingSeries(emit);
      }
    });
  }

  Future<void> _getTrainingSeries(Emitter<TrainingSeriesState> emit) async {
    emit(GetTrainingSeriesLoadingState());
    Either<Failure, TrainingSeriesEntity> result =
        await repository.getTrainingSeries();
    result.fold(
        (failure) => emit(GetTrainingSeriesErrorState(
            error: HandleFailure.mapFailureToMsg((failure)))),
        (response) => emit(GetTrainingSeriesSuccessState(result: response)));
  }
}
