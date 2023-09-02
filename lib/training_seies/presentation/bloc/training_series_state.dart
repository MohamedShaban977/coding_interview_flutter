part of 'training_series_bloc.dart';

abstract class TrainingSeriesState extends Equatable {
  const TrainingSeriesState();

  @override
  List<Object> get props => [];
}

class TrainingSeriesInitial extends TrainingSeriesState {}


class GetTrainingSeriesLoadingState extends TrainingSeriesState {}
class GetTrainingSeriesSuccessState extends TrainingSeriesState {
  final TrainingSeriesEntity result;

  const GetTrainingSeriesSuccessState({required this.result});

}
class GetTrainingSeriesErrorState extends TrainingSeriesState {
  final String error;

  const GetTrainingSeriesErrorState({required this.error});
}
