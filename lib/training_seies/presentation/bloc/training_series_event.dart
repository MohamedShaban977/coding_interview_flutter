part of 'training_series_bloc.dart';

abstract class TrainingSeriesEvent extends Equatable {
  const TrainingSeriesEvent();

  @override
  List<Object?> get props => [];
}

class GetTrainingSeriesEvent extends TrainingSeriesEvent {
  const GetTrainingSeriesEvent();
}
