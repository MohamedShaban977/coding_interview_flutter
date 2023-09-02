import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:task_flutter_mohamed_shaaban/core/assets_manager.dart';

import '../models/training_series_model.dart';



class TrainingSeriesDataSource {

  Future<TrainingSeriesModel> getTrainingSeries() async {
    final response = await rootBundle.loadString(JsonAssets.trainingSeries);
    final result = jsonDecode(response);
    return TrainingSeriesModel.fromJson(result);
  }

}
