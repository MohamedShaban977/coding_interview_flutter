import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter_mohamed_shaaban/training_seies/presentation/bloc/training_series_bloc.dart';

import 'core/bloc_observer.dart';
import 'training_seies/domain/entities/training_series_entity.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TrainingSeriesBloc()..add(const GetTrainingSeriesEvent()),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: TrainingSeriesGridViewScreen(),
      ),
    );
  }
}

class TrainingSeriesGridViewScreen extends StatefulWidget {
  const TrainingSeriesGridViewScreen({Key? key}) : super(key: key);

  @override
  State<TrainingSeriesGridViewScreen> createState() =>
      _TrainingSeriesGridViewScreenState();
}

class _TrainingSeriesGridViewScreenState
    extends State<TrainingSeriesGridViewScreen> {
  final List<OverviewEntity> _trainingSeries = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TrainingSeriesBloc, TrainingSeriesState>(
      listener: _initListener,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: state is GetTrainingSeriesLoadingState
                ? const CircularProgressIndicator()
                : const Text(
                    'Sorry I didn\'t have enough time to build UI, I\'ve done my best to finished frontend ..',
                    style: TextStyle(fontSize: 20.0)),
          ),
        );
      },
    );
  }

  void _initListener(context, state) {
    if (state is GetTrainingSeriesSuccessState) {
      _trainingSeries.addAll(state.result.trainingSeries);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Get Training Series Success State'),
          backgroundColor: Colors.greenAccent,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 5),
        ),
      );
    }
  }
}
